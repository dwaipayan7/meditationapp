const UseCaseInterface = require("../UseCaseInterface");
const Song = require('../../../domain/entities/Song').default

class GetSongs extends UseCaseInterface{
    async execute(){
        const songRows = await getAllSongs();
        return songRows.map(song => new Song({

            id: song.id,
            title: song.title,
            author: song.author,
            songLink: song.songLink
        }));
    }
}

module.exports = GetSongs;