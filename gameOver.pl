:- include('status.pl').

gameOver :- 
    write('$$1     $$1                                                                                                        $$1                                                          '), nl,
    write('1$$1   $$  |                                                                                                      1__|                                                         '), nl,
    write(' 1$$1 $$  1  $$$$$$1  $$1   $$1  $$$$$$1       $$1  $$$$$$1  $$1   $$1  $$$$$$1  $$$$$$$1   $$$$$$1  $$1   $$1     $$1  $$$$$$$1      $$$$$$1  $$1    $$1  $$$$$$1   $$$$$$1  '), nl,
    write('  1$$$$  1  $$  __$$1 $$ |  $$ |$$  __$$1      1__|$$  __$$1 $$ |  $$ |$$  __$$1 $$  __$$1 $$  __$$1 $$ |  $$ |    $$ |$$  _____|    $$  __$$1 1$$1  $$  |$$  __$$1 $$  __$$1 '), nl,
    write('   1$$  1   $$ 1  $$ |$$ |  $$ |$$ |  1__|     $$1 $$ 1  $$ |$$ |  $$ |$$ |  1__|$$ |  $$ |$$$$$$$$ |$$ |  $$ |    $$ |1$$$$$$1      $$ 1  $$ | 1$$1$$  1 $$$$$$$$ |$$ |  1__|'), nl,
    write('    $$ |    $$ |  $$ |$$ |  $$ |$$ |           $$ |$$ |  $$ |$$ |  $$ |$$ |      $$ |  $$ |$$   ____|$$ |  $$ |    $$ | 1____$$1     $$ |  $$ |  1$$$  1  $$   ____|$$ |      '), nl,
    write('    $$ |    1$$$$$$  |1$$$$$$  |$$ |           $$ |1$$$$$$  |1$$$$$$  |$$ |      $$ |  $$ |1$$$$$$$1 1$$$$$$$ |    $$ |$$$$$$$  |    1$$$$$$  |   1$  1   1$$$$$$$1 $$ |      '), nl,
    write('    1__|     1______1  1______1 1__|           $$ | 1______1  1______1 1__|      1__|  1__| 1_______| 1____$$ |    1__|1_______1      1______1     1_1     1_______|1__|      '), nl,
    write('                                         $$1   $$ |                                                  $$1   $$ |                                                                   '), nl,
    write('                                         1$$$$$$  |                                                  1$$$$$$  |                                                                   '), nl,
    write('                                          1______1                                                    1______1                                                                    '), nl, nl,
    write('Are you wanna play again? Y/N?'), nl,
    read(Input_restart), restart(Input_restart), !.

restart(Input_restart) :-
    Input_restart = 'Y',
    start, !.

restart(Input_restart) :-
    Input_restart = 'N',
    write('Thanks for playing our game !'), nl,
    write('See you in next our game !'), nl, !.
