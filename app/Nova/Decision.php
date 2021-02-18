<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\HasOne;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Select;
use OptimistDigital\MultiselectField\Multiselect;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class Decision extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Decision::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make('ID', 'id')->sortable(),
            BelongsTo::make('Meeting'),
            Select::make('Type', 'type')->options([
                'one' => 'Type One',
                'two' => 'Type Two',
                'abc' => 'Type ABC',
            ])->displayUsingLabels()->sortable()->searchable(),
            Text::make('Wording (Optional)','description'),
            Select::make('Mover', 'mover')->options(\App\Models\Representative::pluck('name', 'id')),
            Select::make('Seconder', 'seconder')->options(\App\Models\Representative::pluck('name', 'id')),
            Select::make('Opposer', 'opposer')->options(\App\Models\Representative::pluck('name', 'id')),
            Multiselect::make('People that Speak', 'peoplespeak')->options(\App\Models\Representative::pluck('name', 'id')),
            Multiselect::make('People who Vote For', 'votefor')->options(\App\Models\Representative::pluck('name', 'id')),
            Multiselect::make('People who Vote Against', 'voteagainst')->options(\App\Models\Representative::pluck('name', 'id')),
            Multiselect::make('People who not Vote', 'abstain')->options(\App\Models\Representative::pluck('name', 'id'))
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }
}
