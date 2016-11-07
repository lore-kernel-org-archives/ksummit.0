Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0BEC77A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:48:44 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3626CFE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:48:43 +0000 (UTC)
Date: Tue, 8 Nov 2016 02:27:59 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20161107205759.GN3000@localhost>
References: <CAB=NE6XYBj0h7rYL8yWwACUHF7ni0AMeCe4Rf2dfbjRQ=KY78g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAB=NE6XYBj0h7rYL8yWwACUHF7ni0AMeCe4Rf2dfbjRQ=KY78g@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] Complex dependencies - tech topic notes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Nov 07, 2016 at 12:39:51PM -0800, Luis R. Rodriguez wrote:
> Here are my own notes from what ended up being 2 sessions, 1
> whiteboard session followed up by a few other hallway tracks from the
> complex dependency tech topic at KS/Plumbers. Please provide your own
> notes or feel free to help complete some points below if you have
> anything to contribute, or let's just follow up through patch review
> on Rafael's and Andrzej's work -- I'll be doing this in light of the
> below notes.
> 
> My original goal really was to narrow down which subsystems might use
> a graph to express dependencies, and which might perform a topological
> sort on that graph in the kernel. The end goal being if we could
> abstract and share a solution rather than re-inventing the wheel. Then
> review this in consideration of Rafael's new patches on functional
> dependencies, Andrzej Hajda's new patches on Resource tracking /
> allocation tracking. As expressed in the threads and in the sessions
> though there was an ultimate suspicion this could also help as an
> optimization with probe ordering and to help replace deferred probe,
> this turned out to be the main focus of much of the white board
> session. The itemized list below represents some areas of the kernel
> that came out through hallway tracks follow up discussions.
> 
> Other topics reviewed were dependency cycle resolution and generic
> drivers. Cycles may arise due to topology changes (for instance
> hotplug), and if cycles exist in the worst case we end up with an
> NP-complete order problem, otherwise its a linear problem. One simple
> proposal for cycle resolution that everyone seemed to reach consensus
> for was to strive towards using a graph representation for devices per
> operation or type of device. The topic of Generic drivers was pretty
> broad on its own so we left this out.
> 
> Sadly Andrzej Hajda was not present, nor was anyone familiar with his
> patches... so most review was done in light of Rafael's patches now
> merged in Greg's tree.
> 
> So to recap -- are there areas in the kernel where we implement and
> use a topological sort
> on a graph ? What algorithms are used and could we abstract such code and
> share it between subsystems ?
> 
> A) DAPM (Dynamic Audio Power Management)
> - Summary: TBD

Here are Audio WS notes which have the cross session notes as well

http://mailman.alsa-project.org/pipermail/alsa-devel/2016-November/114279.html

-- 
~Vinod
