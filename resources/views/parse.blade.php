<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IMDB Parser by Dmytrenko Mykhailo</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Semantic-UI -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css" />

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

@foreach($actors as $actor)
<div class="ui link cards" style="margin: 20px 20px; float: left;">
    <div class="card">
        <div class="image">
            <img src="{{$actor['photo']}}">
        </div>
        <div class="content">
            <div class="header">{{$actor['name']}}</div>
            <div class="meta">
                <p>Born: {!! $actor['born'] !!}</p>
            </div>
            <div class="meta" style="height: 50px;">
                <p>Films: {!! $actor['films'] !!}</p>
            </div>
            <div class="description" style="max-height: 400px; margin-top: 20px;">
                {!! $actor['bio'] !!}
            </div>
        </div>
    </div>
</div>
@endforeach

</body>
</html>
