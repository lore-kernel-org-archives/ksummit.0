Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9BD9872A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:45:39 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2896D1BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:45:39 +0000 (UTC)
Date: Thu, 27 Oct 2016 10:45:35 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20161027174535.GA3347@cloud>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
	<1477589981.3431.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1477589981.3431.29.camel@HansenPartnership.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Tejun Heo <tj@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LAST-MINUTE TOPIC] cgroup API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Oct 27, 2016 at 10:39:41AM -0700, James Bottomley wrote:
> On Thu, 2016-10-27 at 10:29 -0700, Andy Lutomirski wrote:
> > Would it make sense to have a session to try to resolve the current
> > cgroup v2 API disagreement?
> > 
> > In the interest of brevity, I'm not going to rehash the issues here,
> > but in extremely short summary, they include tasks in non-leaf 
> > cgroups as well as whether threads in the same process can be in 
> > different cgroups.
> 
> We could do it later on Tuesday, that way it might be possible to
> include more of the containers crowd than are going to KS.

Do we have sufficient representation for both sides of that
disagreement at KS?
