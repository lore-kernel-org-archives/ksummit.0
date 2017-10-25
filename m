Return-Path: <hpa@zytor.com>
To: tech-board-discuss@lists.linux-foundation.org
From: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <9779b6c3-acd6-10aa-b9ca-c024cd77a861@zytor.com>
Date: Wed, 25 Oct 2017 18:47:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Kernel Summit Discussions <ksummit-discuss@lists.linux-foundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board
	election results 2017
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The TAB elections are now complete. Thank you to all the candidates for
putting their names forward.

With 73 ballots cast, the top 5 candidates received:

Steve Rostedt		58
Jonathan Corbet		57
Greg Kroah-Hartman	57
Tim Bird		39
Ted Ts'o		37

It was a very close election, with the next candidate on the list
receiving 36 votes.  Full results are available on request.

This year the ballot counting was done automatically, with visual review
of the scanned ballots v. the automatic results done by myself and Chris
Mason.

A big thank you to all the candidates, to everyone that voted, and
congratulations to the top candidates.

	-hpa

-------------------------------------------------------------------------

For the curious, technical details:

The ballots were produced and counted by SDAPS, an open-source project
(http://www.sdaps.org/).  A set of custom scripts were used to simplify
the generation and counting of ballots specifically for the purpose of
these elections; those scripts are available at:

	http://git.zytor.com/users/hpa/ballot.git

Eventually I hope to clean up these scripts, generalize them for other
voting methods, document them a little better, and formally release them
as an election package, but for now they are relatively specific to the
approval voting.

SDAPS is a bit difficult to build, due to a very large number of
dependencies, some of which aren't well documented.  It would be a very
nice thing if distros would consider packaging it, especially since it
is a very useful package.
