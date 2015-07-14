Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E696305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:24:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0DB08F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:24:24 +0000 (UTC)
Date: Mon, 13 Jul 2015 19:24:19 -0700
From: Darren Hart <dvhart@infradead.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20150714022419.GW111846@vmdeb7>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711023946.GV111846@vmdeb7> <20150711150437.GA6666@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711150437.GA6666@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
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

On Sat, Jul 11, 2015 at 08:04:37AM -0700, Greg KH wrote:
> On Fri, Jul 10, 2015 at 07:39:46PM -0700, Darren Hart wrote:
> > OK, all good points. It looks as though I can step up my own tooling some to
> > make the email-to-compilation step faster so I don't spend as much time on
> > patches with compiler warnings, that don't apply, etc. Dan C. said something
> > similar.
> 
> I think I mentioned it before, but Wolfram has a set of scripts that
> does this really well.  I don't know if they are published anywhere, but
> that would be a good place to start with.  I think Sara Sharp also had a
> bunch that she used to make life easier, you might want to ask her the
> next time you see her in the office.

Will do. I think Jani sent me a set of scripts I need to review too.

Actually, in this sense, I'm the newbie maintainer who's spending time writing
up scripts, tools, and mutt macros to handle a process that 970 other people
have probably already written. I'll do so in a subtly different way of course,
and this will add ever so slightly to the variation in expectations and
behaviors of the Linux maintainers.

Maybe patchwork will be an improvement for tracking. Maybe not. While I do enjoy
writing up these scripts and tools to automate my job as a maintainer.... my
ability - or maybe willingness - to do so, shouldn't be what qualifies me for
the job. More tooling that standardized the process and makes the code review
more accessible to people less interested in writing mutt macros, might expand
our pool of candidates.

> > The "one hour class" thing makes it sound like it takes "one hour" - but I find
> > I have to revisit this stuff fairly regularly, and those hours add up.
> 
> Really?  Why?  Once you learn the workflow, what keeps changing that
> breaks things?  External stuff (like corporate email servers), or things
> in our workflow/tools?

In my experience it's just more new people with the same questions. Once they're
up and running, it's minimal effort to keep going. It's the initial ramp up that
gets repeated. So it's not the "one hour" adding up for the newbie, it's that
"one hour" adding up for me as the instructor :-) I'd love to help reduce the
effort it takes to bring new people up (yup - totally selfish motivation here).

This is especially true when the new people don't stick around. I really don't
want to invest an hour in someone that has 3 patches to send and will never
return.

It can be more trying when someone is doing this for a job and not because they
are interested in becoming a regular contributor. Each step is another barrier
they'd just assume avoid. If they're new, they also don't understand the
workflow or how maintainers scale, so they push against things that don't make
sense for sending 1 patch - but are necessary for processing 1000. Many of these
training sessions involve a certain amount of "why can't we just ..." or "you
don't have gerrit setup?" or ... etc. Ultimately, it's just another barrier to
recruitment.

We can say we don't want people like that contributing anyway, but the end
result of that is less hardware supported, or even more burnt out senior Linux
kernel developers who pick up the load because it's easier than training new
people.

-- 
Darren Hart
Intel Open Source Technology Center
