$(function(){
    $('ul[id^="sort"]').sortable({
        connectWith: ".sortable",
        receive: function(e, ui) {
            var task_id = $(ui.item).data("task-id");
            var status_id = $(ui.item).parent(".sortable").data("status-id");
            var url = '{{ route("editTaskStatus", ["task_id" => ":task_id", "status_id" => ":status_id"]) }}';

            url = url.replace(":task_id", task_id);
            url = url.replace(":status_id", status_id);

            $.ajax({
                url: url,
                data: {
                    "_token": "{{ csrf_token() }}"
                },
                method: 'PUT',
                success: function(response){
                    // alert('deu certo');
                }
            });
        }
    }).disableSelection();
});