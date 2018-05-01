Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3BE254A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 20:42:20 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0102.outbound.protection.outlook.com [104.47.32.102])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B20E8603
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 20:42:19 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Willy Tarreau <w@1wt.eu>
Message-ID: <20180501204216.GC7397@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501203325.GB11618@1wt.eu>
In-Reply-To: <20180501203325.GB11618@1wt.eu>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FD3E65A34FA69740A06DEE1EFE41E883@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 01 May 2018 20:42:20 -0000

On Tue, May 01, 2018 at 10:33:25PM +0200, Willy Tarreau wrote:
>On Tue, May 01, 2018 at 08:00:21PM +0000, Sasha Levin wrote:
>> What's worse is that that commit is tagged for stable, which means
>> that (given Greg's schedule) it may find it's way to -stable users
>> even before some -next users/bots had a chance to test it out.
>
>But it's a difficult trade-off. I think that -next is mostly used by
>developers and that as such the audience remains limited. On the
>opposite, -stable is used by many users. So how many days of -next
>does it take to get the equivalent coverage of one day of -stable,
>I don't know but it's probably a lot. Also server workloads are
>almost exclusively on -stable. So a bug affecting only server users
>will not benefit from -next exposition.
>
>In the end it's all about responding to users' expectations to see
>the bugs fixed. In -stable we regularly see users asking to backport
>certain fixes. Sometimes they have to wait one or two extra versions
>before they get their fix, and they are really not happy at all. If
>the fix is rushed too fast and doesn't work, they won't be happy
>either. Making them happy means backporting the right fix the quickest
>possible. Too little test can result in a wrong fix, but too much test
>results in a slow backport.
>
>Again, I really don't find the -stable situation bad nowadays, quite
>the opposite. I often suggest to people who don't follow too closely
>to stick to latest LTS minus 1 or 2 releases. This way they don't get
>the very latest fixes and have a chance that if something breaks very
>badly, it gets fixed quickly. It works pretty well apparently.
>
>I suspect that some of the issues that really need to be improved are
>the fixes to recently merged code. That's never easy by definition
>because if the code is young, it's not yet very well known even by
>its author.
>
>What *could* possibly be done (though I'm not fond of this) would be
>to state a rule that past a certain number of stacked fixes for a
>recently merged code, an extra review delay will be enforced on the
>subsystem or on patches coming from the submitter. But I really doubt
>it would significantly improve the situation.

I think that this discussion has shifted to -stable issues, which is not
what I was aiming for.

I tried to present a statistic from the recent kernel commits showing
that per changed line of code, an -rc commit has more than 3 times the
likelyhood to introduce a bug rather than a merge window one.

Is this something the community sees as an issue, or do we expect a
significantly higher odds of introducing bugs in -rc commits?

Feed free to ignore any proposals I've made. If you see this as an
issue, what could we do to address it?

Let's leave -stable out of this for now.=
