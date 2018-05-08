Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4423504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 22:41:40 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E8B9F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 22:41:40 +0000 (UTC)
Message-ID: <1525819297.13798.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>, David Lang <david@lang.hm>
Date: Tue, 08 May 2018 15:41:37 -0700
In-Reply-To: <20180508214339.GE8514@sasha-vm>
References: <20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
	<CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
	<20180508205505.GD8514@sasha-vm>
	<alpine.DEB.2.02.1805081357451.31825@nftneq.ynat.uz>
	<20180508214339.GE8514@sasha-vm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2018-05-08 at 21:43 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Tue, May 08, 2018 at 01:59:18PM -0700, David Lang wrote:
> > On Tue, 8 May 2018, Sasha Levin wrote:
> > 
> > > There's no one, for example, who picked up vanilla v4.16 and
> > > plans to keep using it for a year.
> > 
> > Actually, at a prior job I would do almost exactly that.
> > 
> > I never intended to go a year without updating, but it would happen
> > if  nothing came up that was related to the hardware/features I
> > was running.
> > 
> > so 'no one uses the Linus kernel is false.
> 
> My point is not that "no one ever uses Linus kernel" but that no one
> takes one of those kernels and plans to stick with it for 3 months
> until the next one comes up, even if there are updates relevant to
> that user..

Actually, I have sometimes done that.  My current laptop is running the
v4.16 tag now, not because I intended to run it for this long but
because I've run into a Round Tuit shortage as far as the -rc
candidates go.

> Yes, some users will use a .0 release until either Greg releases a
> -stable, or until the next -rc is out.
> 
> What I'm trying to say is that there is that the .0 release makes
> some people rush poorly tested commits in it even though the .0
> release is not significant in any way.

As a milestone, it's extremely significant because it's the cadence
from which everything else flows.  If we as developers stop taking the
-rc cycle seriously, you'll find immediate negative consequences for
your stable kernels.  And I mean way worse consequences than the odd
bad judgment call about a patch that ought not to have gone in right
before a Linus release.

James
