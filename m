Return-Path: <serge@mail.hallyn.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AC4A40D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Oct 2016 15:27:15 +0000 (UTC)
Received: from h2.hallyn.com (h2.hallyn.com [78.46.35.8])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 058E5D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Oct 2016 15:27:14 +0000 (UTC)
Date: Sun, 30 Oct 2016 10:27:23 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20161030152723.GA27915@mail.hallyn.com>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
	<20161027200929.GB17657@htj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161027200929.GB17657@htj.duckdns.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
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

On Thu, Oct 27, 2016 at 04:09:29PM -0400, Tejun Heo wrote:
> Hello,
> 
> (cc'ing Johannes)
> 
> On Thu, Oct 27, 2016 at 10:29:01AM -0700, Andy Lutomirski wrote:
> > Would it make sense to have a session to try to resolve the current
> > cgroup v2 API disagreement?
> > 
> > In the interest of brevity, I'm not going to rehash the issues here,
> > but in extremely short summary, they include tasks in non-leaf cgroups
> > as well as whether threads in the same process can be in different
> > cgroups.
> 
> Yeah, sure.  Do we have some time on Mon evening?  I'm not sure I'll
> be around Tue evening.

FWIW I'm only arriving tuesday morning;  but obviously far more important
that Tejun be there, so I think I vote for monday night.
