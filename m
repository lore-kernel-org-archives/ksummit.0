Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 598547A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 19:32:52 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CD19B1E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 19:32:51 +0000 (UTC)
Message-ID: <1477942366.3880.7.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 31 Oct 2016 13:32:46 -0600
In-Reply-To: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
References: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Addressing Complex Dependencies - Tuesday
 9:30am - Coronado/Devargas
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-10-31 at 11:35 -0700, Luis R. Rodriguez wrote:
> [ Note: Plumbers attendees are welcomed to participate in KS tech
> topics ]
> 
> The tech topic thread of addressing complex dependencies was pretty
> broad, I've gone over most of the thread and have tried to condense
> most ideas discussed into categories. There were four related work
> items I had originally noted but Andrzej Hajda also had mentioned his
> own work, below they are all together:
> 
>   * Functional dependencies (now merged on Greg's tree)
>   * Resource tracking / allocation framework
>   * Media controller feature graph
>   * Linker tables
>   * Async probe
> 
> Other topics brought up:
> 
>   * Probe ordering
>   * Generic drivers
> 
> And lastly these related subjects were also mentioned which have a
> direct impact to dependency relationships:
> 
>   * Device hierarchy (just not a tree but a graph)
>   * Handling cycles on the graph
>   * Graph Cycle solution proposals
> 
> There was some overlap in interest between a bit of Audio workshop
> folks and this session so we've made arrangements to address only the
> shared topics of interest together with the Audio folks at the Audio
> workshop first at Sweeney Ballroom CDE, and then move on to address
> the rest of the topics in the room assigned for addressing complex
> dependencies, Coronado/Devargas.
> 
> The shared topics then we will address first at 9:30am are:
> 
>   * Generic drivers
>   * Device hierarchy (just not a tree but a graph)
>   * Handling cycles on the graph
>   * Graph Cycle solution proposals
> 
> After this is covered we can move on to Coronado/Devargas to adress
> the rest of the remaining topics:
> 
>   * Functional dependencies (now merged on Greg's tree)
>   * Resource tracking / allocation framework
>   * Media controller feature graph
>   * Linker tables
>   * Async probe

I added you to the schedule for Plumbers/KS here:

https://linuxplumbersconf.org/2016/ocw/proposals/4551

You've got about three plumbers users, so I'm not sure I picked the
correct one.

James
