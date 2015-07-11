Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC8C4AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 15:18:48 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 5CF4011A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 15:18:47 +0000 (UTC)
Date: Sat, 11 Jul 2015 15:18:44 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150711151844.GB23515@io.lakedaemon.net>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<alpine.DEB.2.10.1507110923220.2551@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1507110923220.2551@hadrien>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 11, 2015 at 09:29:47AM -0400, Julia Lawall wrote:
> On Sat, 11 Jul 2015, Sudip Mukherjee wrote:
> > >On Sat, Jul 11, 2015 at 5:43 AM, Greg KH <greg@kroah.com> wrote:
> > >
> > > I applaud your attempt here, and don't want to stop you from working on
> > > it, but I think the real issue is having people actually look for the
> > > documentation and tools we already have created to do this.  If you make
> > > yet-another-tool, how are you going to advertise it any better than the
> > > existing tools/documentation are?
> > > 
> > I don't know if i should give my opinion here. I am here for almost one
> > year and am coming from Eudyptula. I think this thread was regarding
> > recruitment and high dropout rates.
> > So from a newbie's point of view, setting up git or mutt was never a
> > problem. Ok, maybe everyone needs to send his/her first patch two or
> > three itmes until he gets it right in the formating or commit message
> > or subject. But sending it using git send-email never had been a problem.
> > In my opinion the main problem is lack of direction or guidance. As a
> > newbie I send my first patch, it gets accepted, I have a party to
> > celebrate and do more style correction and few more patches are accepted.
> > But by that time I am getting bored with just style correction and want
> > to do something more.
> > Now the problem starts. No one is there to guide me and I as a newbie
> > will not be that much capable enough to find things to do on my own. And
> > I start loosing the interest. Newbies who are coming from Eudyptula or
> > starting on their own will face this. But on the otherhand participants
> > of Outreachy will get a Mentor to guide them and gets a stipend to keep
> > them motivated. Stipend may not matter to the right candidate who has
> > interest but having a mentor is the big difference.

Thanks Sudip for sharing your experience.

> This is a good point.  I keep thinking of making a "Stuff I don't like"
> blog, which would contain things that I see that look unpleasant, but that
> I don't have time to deal with immediately.  This would contain things
> that are probably too complicated for checkpatch.  A typical entry might
> be a list of functions that could be using devm functions.  Such a thing
> could get newbies looking around in the code, seeing how things fit
> together, etc.
> 
> > Another problem, when a newbie tries to move out of staging to some other
> > subsystem he likes, the maintainer may not be that much responsive. Just
> > for example, i submitted a patch on November, 2014 and I am yet to receive
> > a reply or review to that and the patch was not a style correction patch.
> 
> This seems like the sort of problem that has existed since the beginning
> of time, and will exist unti the end of time.  

:(  I'll admit it's been a problem, but I strongly disagree that it will
always be that way.

afaict, there's two scenarios here:  1/ A dev wanting to help, but
doesn't have a personal itch to scratch.  2/ A dev with an itch to
scratch but an unresponsive maintainer.

wrt 1, there's always a lot of potential solutions for TODO lists and
the like.  The problem with them is they quickly become out of date, or
overcome by other changes.  Thus, they need to be maintained.  Typically
by the person knowledgeable in the subsystem.  Who has little time for
such activities.

We could say "Ask the maintainer" since that person usually has a list
of itches a mile long.  But that adds a coaching / mentoring burden to
the maintainer.

Perhaps that burden could be reduced by a 'kernel-mentor@v.k.o' ML?  The
idea is that a new contributor would Cc that in addition to the usual
Cc's.  Folks like me who enjoy mentoring would be subscribed and would
do most of the coaching, leaving the subsystem-specific critique to the
subsystem maintainers.

As for 2, I think the kernel-mentor@ could help here as well.  Those of
us subscribed to it know the flow of the kernel cycle, as well as the
bursty nature of some of the maintainers.  So we could advise "Go ahead
and resend" or "Maintainer X usually applies everything around -rc7, so
let's be patient."

If it works, we may even find maintainers kicking tasks they don't have
time for to kernel-mentor@ ...

thx,

Jason.
