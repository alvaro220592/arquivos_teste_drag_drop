<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        {{-- CSS local --}}
        <link rel="stylesheet" href="css/style.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>

    <body>
        <h1>Drag & Drop</h1>
        <div class="task-board">
            @foreach ($status as $st)
                <div class="status-card">
                    <div class="card-header">
                        <span class="card-header-text">{{ $st->title }}</span>
                    </div>
                    <ul class="sortable ui-sortable" id="sort{{ $st->id }}" data-status-id="{{ $st->id }}">
                        @if (!empty($st->tasks))
                            @foreach ($st->tasks as $task)
                                <li class="text-row ui-sortable-handle" data-task-id="{{ $task->id }}">
                                    {{ $task->title }}
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            @endforeach
        </div>

        {{-- JS local --}}
        <script src="js/script.js"></script>
    </body>
</html>