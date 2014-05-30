Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A63F2B2D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 19:54:50 +0000 (UTC)
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3674320355
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 19:54:50 +0000 (UTC)
Received: by mail-qg0-f48.google.com with SMTP id i50so6725819qgf.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 12:54:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140530165646.GZ25041@thunk.org>
References: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
	<20140530165646.GZ25041@thunk.org>
Date: Fri, 30 May 2014 13:54:49 -0600
Message-ID: <CAKocOOPv1tRz0RoebO52bTJSkHjjKDMTDSLb-mnjyFqp++hFiA@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
 kernel developers (was: Re: [TOPIC] Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 10:56 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> Thinking about this some more, what if instead of, or in addition to,
> having newcomers work on cleanup patches, what if we encouraged some
> of them to help to manually backport patches to the stable kernels
> that don't apply automatically?
>
> Currently the stable maintainers will typically send a notification
> subsystem maintainer / mailing lists that a particular patch didn't
> apply and that it's up some subsystem developers to handle resolving
> the patch conflict.
>
> What if those patches were also cc'ed to a separate mailing list which
> was also monitored by patchwork, and newcomers were encouraged to grab
> patches and try to make a determination whether it's really needed,
> and how to handle doing the backport, and once the patch was properly
> backported they could cc the subsystem mailing list asking for
> approval before the patch could get fed into a long-term stable tree?
>
> It does mean more patches to reviews, but I'd much rather review a
> patch going into a long-term stable tree that would otherwise get
> dropped (and thus avoid whiny entitled users and/or embedded engineers
> who think it's the maintainer's job to backport to N different stable
> kernels), rather than review whitespace patches.
>
> If this worked out, I could also imagine encouraging more advanced
> newcomers to look for bug fix patches that didn't have an explicit cc:
> stable@vger.kernel.org, and look to see if they should be backported.
> This would help for certain subsystems that have elected not to
> automatically mark their patches.  There are subsystems which don't
> like anyone but their experienced developers to handle doing
> backports, but I suspect there would also be many subsystems that
> would welcome the extra help, especially if it was much more likely to
> result in additional reviewers / subsystem developers.
>

In addition to the above, how about keeping a maintainer and sub-maintainer
wish list of tasks and work they would like to see get done in their areas and
don't have time do it themselves. It could be maintained on kernelnewbies site.
Having something like this will help guide and give direction to people looking
to get started in a new area and/or any area of the kernel.

-- Shuah
