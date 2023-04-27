describe('Teste', () => {
    it('preencher menu forms', async () => {
        await $('~Forms').click()
        await $('~text-input').setValeu('teste')
        expect (await $('~input-text-result').toBeDisplayed('teste'))
       
        await $('android.widget.EditText').click()
        await $('id:android:id/text1').click()
    
        await $(' android.view.ViewGroup').click() 

    });
    
});