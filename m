Return-Path: <laurent.pinchart@ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 26 Oct 2017 01:14:21 +0300
Message-ID: <2984302.a0WA3y5s5U@avalon>
In-Reply-To: <9779b6c3-acd6-10aa-b9ca-c024cd77a861@zytor.com>
References: <9779b6c3-acd6-10aa-b9ca-c024cd77a861@zytor.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: tech-board-discuss@lists.linux-foundation.org,
	Kernel Summit Discussions <ksummit-discuss@lists.linux-foundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
	election results 2017
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On Wednesday, 25 October 2017 19:47:10 EEST H. Peter Anvin wrote:
> The TAB elections are now complete. Thank you to all the candidates for
> putting their names forward.
> 
> With 73 ballots cast, the top 5 candidates received:
> 
> Steve Rostedt		58
> Jonathan Corbet		57
> Greg Kroah-Hartman	57
> Tim Bird		39
> Ted Ts'o		37
> 
> It was a very close election, with the next candidate on the list
> receiving 36 votes.

Do we have a procedure in place in case the tie that we only avoided by one 
vote would have happened ?

> Full results are available on request.
> 
> This year the ballot counting was done automatically, with visual review
> of the scanned ballots v. the automatic results done by myself and Chris
> Mason.
> 
> A big thank you to all the candidates, to everyone that voted, and
> congratulations to the top candidates.
> 
> 	-hpa
> 
> -------------------------------------------------------------------------
> 
> For the curious, technical details:
> 
> The ballots were produced and counted by SDAPS, an open-source project
> (http://www.sdaps.org/).  A set of custom scripts were used to simplify
> the generation and counting of ballots specifically for the purpose of
> these elections; those scripts are available at:
> 
> 	http://git.zytor.com/users/hpa/ballot.git
> 
> Eventually I hope to clean up these scripts, generalize them for other
> voting methods, document them a little better, and formally release them
> as an election package, but for now they are relatively specific to the
> approval voting.
> 
> SDAPS is a bit difficult to build, due to a very large number of
> dependencies, some of which aren't well documented.  It would be a very
> nice thing if distros would consider packaging it, especially since it
> is a very useful package.

-- 
Regards,

Laurent Pinchart
