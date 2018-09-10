Return-Path: <dan.rue@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBDEEF75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:20:41 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43305F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:20:41 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id 75-v6so1101983iou.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:20:41 -0700 (PDT)
Date: Mon, 10 Sep 2018 11:20:38 -0500
From: Dan Rue <dan.rue@linaro.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180910162038.nrczig3vzmap5nmo@xps.therub.org>
References: <20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
	<20180907202328.GE25756@kroah.com>
	<20180907211341.GJ16300@sasha-vm>
	<CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
	<20180907224346.GA21546@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907224346.GA21546@roeck-us.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 03:43:46PM -0700, Guenter Roeck wrote:
> On Fri, Sep 07, 2018 at 03:27:01PM -0700, Linus Torvalds wrote:
> > On Fri, Sep 7, 2018 at 2:13 PM Sasha Levin via Ksummit-discuss
> > <ksummit-discuss@lists.linuxfoundation.org> wrote:
> > >
> > > 1. Grab a batch of ~2-3 week old commits from Linus's tree.
> > > 2. Review, basic tests and send stable-rc notification.
> > 
> > Side note: maybe the stable grabbing and testing could be automated?
> > 
> > IOW, right now the stable people intentionally (generally) wait a week
> > before they even start. Maybe there could be an automated queue for
> > "this has been marked for stable" (and the whole "fixes:" magic that
> > you guys already trigger on) that gets applied to the previous stable
> > tree, and starts testing immediately.
> > 
> > Because one of the patterns we *do* obviously see is that something
> > was fine in mainline, but then broke in stable because of an unforseen
> > lack of depdenencies. Sure, it's probably pretty rare (and *many*
> > dependencies willl show up as an actual conflict), but I think the
> > times it does happen it's particularly painful because it can be so
> > non-obvious.
> > 
> > So maybe an automated "linux-next" that starts happening *before* the
> > rc stage would catch some things?
> > 
> 
> And it does, as soon as Greg publishes a set of patches. At the very
> least 0day runs on those, as well as my builders. There is a question
> of scalability, though. I am sure that will improve over time as more
> test resources become available, but six stable releases plus mainline
> plus next plus whatever contributing branches covered by 0day and others
> does take a lot of resources.

We build and test every push to the stable-rc branches, mainline, and
next, too. Branches have a carrying cost (maintenance, triage, etc -
this cost goes down as tooling improves), and pushes have an
infrastructure (build and test) cost. I'll agree with Guenter that I'd
rather see better coverage on fewer branches. It's also important for
tree maintainers to realize the downstream consequences of a push on the
CI/CD environments. Sometimes we see a lot of pushes with little or no
changes, which causes duplicate testing and delays results. On the other
hand, it is nice to have bisection points within a branch for when
problems do emerge.

The fewer branches we track for CI/CD, the more attention they will
receive, the deeper the testing can go, and the better the results will
be. -next is a good example of this principle.

In fact, we recently stopped building and testing the stable release
branches altogether, because it's redundant if you're already testing
every push on the stable-rc branches.

This is also true for test suites/frameworks. I'd prefer to see more
activity around fewer test suites, rather than a proliferation of
different ways of writing and running tests. The cost of adding a test
suite to CI/CD is high, especially if you do it well, and so as we see
efforts centralize around fewer suites, coverage and test quality will
improve in general.

Dan


> 
> Personally I would suggest to further improve test coverage, not to add
> more branches to test. More hardware for sure, but also adding more tests
> such as the network testing suggested by Sasha.


> 
> Guenter
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
