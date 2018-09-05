Return-Path: <SRS0=+gHD=LT=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DB491164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:50:11 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA25071C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:50:10 +0000 (UTC)
Date: Wed, 5 Sep 2018 11:50:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20180905115008.22e3d21f@gandalf.local.home>
In-Reply-To: <20180905150315.GA10819@linux.vnet.ibm.com>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018 08:03:15 -0700
"Paul E. McKenney" <paulmck@linux.vnet.ibm.com> wrote:

> I am one of those strange people who rebase in order to improve
> bisectability.  But one reason I can do that is that I have relatively
> few patches, and it gets harder the more patches I am carrying.  I suppose
> that someone (not me!) could rebase -stable to make it more bisectable,

How would rebasing it make stable more bisectable? Once you rebase, you
don't have a tree that use to work? Although I guess you may find the
commit that caused the problem better. But rebasing creates a lot of
other issues, I would not recommend rebasing stable, as that would
totally break the RT stable tree work flow.

-- Steve


> but that sounds difficult, painful, and error-prone.  Could added tooling
> make bisection work better?  Sounds valuable, but non-trivial.
