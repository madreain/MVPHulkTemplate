package ${moduleName};


import dagger.Module;
import dagger.Provides;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
@Module
public class ${fragmentClass}Module {

    @Provides
    ${fragmentClass}Contract.View getView(${fragmentClass}DialogFragment view) {
        return view;
    }

}
