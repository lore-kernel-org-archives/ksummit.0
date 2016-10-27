Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 136DD5B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:39:45 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8769C1BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:39:44 +0000 (UTC)
Message-ID: <1477589981.3431.29.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Peter Zijlstra
	<peterz@infradead.org>, Tejun Heo <tj@kernel.org>
Date: Thu, 27 Oct 2016 10:39:41 -0700
In-Reply-To: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [LAST-MINUTE TOPIC] cgroup API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2016-10-27 at 10:29 -0700, Andy Lutomirski wrote:
> Would it make sense to have a session to try to resolve the current
> cgroup v2 API disagreement?
> 
> In the interest of brevity, I'm not going to rehash the issues here,
> but in extremely short summary, they include tasks in non-leaf 
> cgroups as well as whether threads in the same process can be in 
> different cgroups.

We could do it later on Tuesday, that way it might be possible to
include more of the containers crowd than are going to KS.

James
