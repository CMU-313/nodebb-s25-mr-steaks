var request = require('request');

const translatorApi = module.exports;

translatorApi.translate = async function (postData) {
    const TRANSLATOR_API = "http://127.0.0.1:5000"
    try {
        const response = await fetch(TRANSLATOR_API+'/?content='+postData.content);
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        console.log(data)
        return [data["is_english"], data["translated_content"]]
    }
    catch (error) {
        console.error("Translation fetch failed:", error);
        return [false, postData.content];
    }
}
