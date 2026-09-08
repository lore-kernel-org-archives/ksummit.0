Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com [216.40.44.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68A53AB27F
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 23:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788909217; cv=none; b=jLZvGlzBk/SiaExliKCQzY87w49cBfIXJ2G/yCzMibliUPsVfhTNvGs65ak4xwowyTN1BpT7R/d6GZXwvSd4onGiFtSpne/geQtWQdHGoWWqxUpmxNR+9uTMsFq4EUakDyr9tHwPEO9pgngAb9JSsFbqkBO/6mbuIhtu3NTOrHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788909217; c=relaxed/simple;
	bh=sg+P0XWxiFO+Yz6dH29vwLOUaHdzvG2uaMAGRJMRJ5E=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ce1QexNL+MvIq528d4Fr38kxk/PsmP1mUafolOIlExfFJZO9Lc+Y+Kp444kWGN7O5iLVaaEKkJ1uaJwJt3e0ZkJ9q8hCaJ+P9PQ6QNOg2h1HPSxznqmAPoy/Ug42lrZPQK6gz3dxExPpQgyWJhu61ldjGj+l2WxBVHBmqC+HZy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=vuycP3hT; arc=none smtp.client-ip=216.40.44.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="vuycP3hT"
Received: from omf09.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id A2006A537E;
	Tue,  8 Sep 2026 23:13:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf09.hostedemail.com (Postfix) with ESMTPA id 8BB492002A;
	Tue,  8 Sep 2026 23:13:25 +0000 (UTC)
Date: Tue, 8 Sep 2026 19:14:40 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Theodore Tso <tytso@mit.edu>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 ksummit@lists.linux.dev, istoppa@nvidia.com, Kate Stewart
 <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>,
 Gabriele Monaco <gmonaco@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260908191440.65efef15@gandalf.local.home>
In-Reply-To: <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	<2026090747-carless-trio-ae92@gregkh>
	<CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	<ap-AmsGgDNFYLlw8@mit.edu>
	<CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
	<aqARgWGWYG5kZW9g@mit.edu>
	<CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
	<20260908152921.3c90bdfa@gandalf.local.home>
	<CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8BB492002A
X-Stat-Signature: ohro4bgmm4xbxs7gjnscue87zy1r6rui
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19At39LL0+coAuJrvk7xpbuzKDTZPPh4yc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=S+u0SjMheilGDtIIsSojU1BgI8nL88mukeEuVb7nnhU=; b=vuycP3hTiHv1LI8oL1xQazVpp0y0bidrLO4CTcLnbJyPub22urxTmkkv7W1FdbRMrxriMppP2ahoI3WYbhT/jG+bQXWtjcl5bATvu54+DSQjNt8apK8hwwBYRmgx+9KNF+DQ757+DzXaDfO8+napM38mDzPo0fXedLubLa0pcNc=
X-HE-Tag: 1788909205-199312
X-HE-Meta: U2FsdGVkX19R5IFqBM8afSmER8sZhqKglKd8mUtDgQNwSK1bES7mv1Jqb77LNXIKq47J8qENKj45WHSvQ3QpmB1qA3O88ffScXFEsFeEThh5a5o9dO569m6OVHqdgP62COfms67MgtU0uATD/p98nD6QriGH+2IAnmlHyVJJuhPdlYCIG/HTp3JvmDsWXZuZyXOaVBOnfWvJL6FDM95jERLXbkB1J5pGibu3HPKSQGtKbSrGHIUEmIgviTMwZCFkyF3bGz9ovZ97/EutnwxuzbYM2jaU19NJwQi4w/+roQLERtkuXggu1qxSj5p7GCfhjWS023orkU2gmVnBJcnXXIM7v6w0WkzNNe00+lZ5V86EV7NOtNVoAN1nLiE16+F5VDnUrBd6H36DYcx85UWxf9nW890XroYV9bFLTBTEfXws5DIfSw76yzgQ8nz34/Jdfzf9bocQb4A=


[ Adding another Gabriele to the mix ]

On Wed, 9 Sep 2026 00:13:19 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> On Tue, 8 Sept 2026 at 22:28, Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > [ Adding a couple of people working with ELISA ]  
> 
> [...]
> 
> > Hence, a process that you don't realize is a process!  
> 
> Even intentionally not having a process can be seen as a process :)
> 
> [...]
> 
> > From what I remember, certification requires documenting the process and
> > showing that you are following it. And have artifacts to prove it (git
> > commits, email trail, etc). Repeatability is crucial. Being able to create
> > tests may also be needed.  
> 
> Indeed, and having a process, test cases, repeatability and what not,
> it is all necessary to get to the doorsteps of a safety qualification.
> That's what is called QM - Quality Managed.
> Which in itself is already a significant achievement.
> CMM belongs more or less there.
> 
> The problems come when one wants to move into the field of actual safety
> qualification.
> 
> To name what is perhaps the most recurring term: FFI, Freedom From Interference.
> It means that a given component which has been identified as the recipient
> of safety goals, must not be silently altered in its safety-related properties.
> 
> Alteration can be both spatial (e.g. scribbling over its memory)
> and temporal (e.g. altering its execution timing in whatever way).
> 
> Contrary to what one might guess at first impression, though,
> this doesn't mean that said interference cannot be allowed.
> 
> It can, provided that it is somehow managed timely.
> The classical case is a process not being scheduled and failing to ping its WD.
> 
> (I'm not missing the irony of me preaching to the choir, but if I have
> to say this, I might as well
> try to make it as accessible as possible to everyone who might be reading it)
> 
> Watchdogging done right is in itself not trivial, but often overlooked.
> However more obvious problems arise with the other aspect, spatial interference.
> 
> Assuming a bug can lurk in one of the many kernel components,
> there is a possibility that it can compromise the integrity of some information
> that is writable in kernel space.
> Information that might be fulfilling a safety goal.
> 
> How to ensure that, if this happens, such an event will be either prevented
> or detected within the allotted temporal window?
> 
> The bug can be anywhere, and it can manifest itself only once in 10
> blue moons, or less.
> And it might not even be normally noticeable, because under most
> conditions it scribbles
> over memory that is irrelevant or even unused.
> 
> But that one time that the bug hits the jackpot, what is gonna prevent
> it from causing
> an unsafe situation? E.g. wrong angle passed to the steering actuator,
> car that doesn't follow a turn.
> 
> These situations must be covered, explicitly.

Sounds very much what the Runtime Verifier[1] is used for. It is code that
adds a model represented by a state machine and hooks to tracepoints within
the kernel. It moves the state along based on the information it monitors
and if it were to ever detect an anomaly it would trigger a reaction (could
be simply panic the kernel to go into a safety critical mode).

-- Steve


> 
> The surface to answer for can be very large: from private data of
> device drivers to
> parts of the linear maps providing backing for processes.
> 
> Some argue that by virtue of a process, they can guarantee that a
> specific build
> of a specific configuration won't cause that sort of problem.
> 
> It more or less amounts to claiming that the entirety of the kernel is
> devoid of bugs that
> might cause that unwanted behavior, under a very diverse set of conditions.
> That, and statistical data obtained from very different builds,
> configured in very different ways,
> running on very different systems, under very different loads.
> 
> Without entering the merit of the claim itself, one observation that
> can be made, objectively,
> about that sort of approach.
> 
> If even one bug of the wrong type has escaped the process, then the
> system is not safe anymore.
> If it has ever been. I leave it to the reader to decide what is the
> likelihood of such a bug-free system.
> 
> What said so far might sound like paranoia, but it is what is
> necessary to provide safety.
> Besides, there are various levels of qualification, for safety.
> Any process-based approach won't go very far.
> 
> Hence the approach I described earlier, where we are perfectly happy
> to let the vast majority
> of the kernel as it is, not a recipient of any safety requirement.
> If maintainers want to improve their processes, that's great,
> but we wouldn't be really asking for any extra effort, for safety.
> 
> > I'm guessing that this will affect the core kernel the most (scheduler,
> > interrupt handling, memory management) which should be treated with a bit
> > more scrutiny than normal device drivers as if they go wrong, everything
> > goes wrong.  
> 
> Actually, no. You are describing availability. MTBF.
> Great to have for a marketable product, but not mandatory from a safety angle.
> What matters for safety is to detect and report timely any safety violation.
> That's all.
> Each system can be designed to cope with it in its own way.
> E.g. some cars will disengage the main unit and activate an auxiliary
> system with reduced capability.
> Others will simply turn on an indicator and tell you that a certain
> functionality (e.g. ABS) is unavailable.
> 
> > File systems have a similar requirement because if they go wrong, people
> > lose data, which is never good. Funny enough, I'm not sure if file systems
> > are part of the safety portion, as file systems are mostly used for logging
> > in safety environments, but may not be part of the safety path.  
> 
> What we want to ensure is the absence of unsafe operations.
> In many cases one can tie it to integrity and timing.
> 
> But, without downplaying filesystems, the first and foremost integrity
> problem is
> memory integrity, because what good is it to have a safe filesystem, if then
> things can get silently altered once they are in memory, due to a bug?
> 
> > What you should strive to achieve is a way to make it easy for Linux kernel
> > developers to follow the process you need. If it makes sense to follow and
> > not a bunch of bureaucratic BS, you may have people following it.
> > Especially if it helps make their code better.  
> 
> I know you have been exposed to what Kate and Gab are pursuing.
> That is the process-based-approach.
> 
> While we do not disagree with the benefits it can bring, we don't
> really rely on it.
> As I wrote earlier, for us it's perfectly fine if the present
> development model stays as it is,
> we don't have any dependency on it, for claiming safety.
> 
> We have fences to take care of unwanted behavior.
> Which means that we don't have to worry about where the interference comes from,
> as long as we can model and manage it.
> 
> [...]
> 
> > It sounds like you want to do what I mentioned above. To have a process that
> > kernel developers can follow that's not too different than what they do
> > today, but just in a way that it helps satisfy your requirements.  
> 
> Our method doesn't need anything like that.
> It's been designed specifically to not have that need.
> We certainly won't oppose any process improvement.
> But there's also the problem that what you describe would not be found
> to be sufficient,
> by certain stricter assessing bodies.
> 
> OTOH our safety concept has been found to be adequate, provided that we
> bring it to completion.
> 

[1] https://docs.kernel.org/trace/rv/runtime-verification.html
