library core;

import 'package:core/core.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

export 'src/data/failure/failure.dart';
export 'src/data/bloc_state/base_bloc.dart';
export 'src/data/form_keys.dart';

export 'src/formatter/color_formatter.dart';
export 'src/formatter/string_formatter.dart';

export 'src/themes/colors.dart';
export 'src/themes/dimens.dart';
export 'src/themes/fonts.dart';
export 'src/themes/icons.dart';
export 'src/themes/images.dart';
export 'src/themes/paths.dart';
export 'src/themes/themes.dart';
export 'src/themes/text_field_input_decoration.dart';

export 'src/widgets/dot_indicator.dart';
export 'src/widgets/error_page.dart';
export 'src/widgets/wallet_actions.dart';
export 'src/widgets/custom_dialog.dart';
export 'src/widgets/custom_back_button.dart';
export 'src/widgets/custom_input_field.dart';
export 'src/widgets/page_title_bar/app_logo_on_bar_page_title_bart.dart';
export 'src/widgets/page_title_bar/page_title_on_page_title_bar.dart';
export 'src/widgets/page_title_bar/page_title_bar.dart';
export 'src/widgets/child_page_app_bar/child_page_app_bar.dart';

export 'src/utils/media_query_extensions.dart';
export 'src/utils/mapper.dart';
export 'src/utils/enums.dart';
export 'src/utils/constants.dart';
export 'src/utils/helpers.dart';

export 'package:nil/nil.dart';
export 'package:flutter_easyloading/flutter_easyloading.dart';
export 'package:enum_to_string/enum_to_string.dart';
export 'package:tflite_flutter/tflite_flutter.dart';
export 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);
