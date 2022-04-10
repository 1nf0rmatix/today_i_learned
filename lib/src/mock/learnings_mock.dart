import 'dart:math';

import 'package:today_i_learned/src/core/core.dart';

class LearningsMock {
  static final learnings = <LearningModel>[
    LearningModel(
      uid: '',
      title: 'Something nice',
      description:
          '''Molestias expedita nam dolores est consequatur aut deleniti aut. Repellendus ipsam molestiae odit exercitationem possimus incidunt sint. Voluptas omnis in laboriosam vitae. Adipisci eum laboriosam qui error dolore quam. Enim aut amet.
 
Reiciendis accusantium deserunt minima itaque eos. Suscipit eum eius praesentium odio aliquid facere dolores et. Minus rem vel nobis aliquam.
 
Aut nihil accusamus deleniti corrupti quae harum quis quaerat. Quidem est incidunt cumque iste quod et non quisquam. Maiores veritatis quia est aut est repellendus officia dignissimos libero. Nam est atque et. Rerum deleniti labore totam illum autem quis explicabo. Praesentium accusantium dolorem libero sint eum debitis ducimus recusandae.''',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 2),
    ),
    LearningModel(
      uid: '',
      title: 'Something nice',
      description: 'I quite appreciate that',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 4),
    ),
    LearningModel(
      uid: '',
      title: 'Something nice',
      description: 'I quite appreciate that',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 5),
    ),
    LearningModel(
      uid: '',
      title: 'Something nice',
      description: 'I quite appreciate that',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 5),
    ),
    LearningModel(
      uid: '',
      title: 'Something nice',
      description: 'I quite appreciate that',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 7),
    ),
    LearningModel(
      uid: '',
      title: 'Something nice',
      description: 'I quite appreciate that',
      difficulty: randomDifficulty(),
      category: 'flutter',
      created: DateTime(2022, 3, 8),
    ),
  ];

  static Future createAll(LearningRepository learningRepository) async {
    for (var learning in learnings) {
      await learningRepository.create(learning);
    }
  }

  static double randomDifficulty() {
    var stepSize = AppConfig.difficultyMaximum / AppConfig.difficultyDivisions;

    var steps = (Random().nextDouble() * AppConfig.difficultyDivisions).round();

    return steps * stepSize;
  }
}
