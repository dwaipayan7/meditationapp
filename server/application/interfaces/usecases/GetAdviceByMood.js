const UseCaseInterface = require("../UseCaseInterface");

class GetAdviceByMood extends UseCaseInterface{
    constructor(quotesRepository){
        super();
        this.quotesRepository = quotesRepository;
    }

    async execute(){
        const quotesData = await this.quotesRepository.getAdviceByMood(mood);
        return new Meditation({text: quotesData});
    }

}

module.exports = GetAdviceByMood;