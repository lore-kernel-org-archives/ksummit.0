Return-Path: <htejun@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 53F9249B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 20:09:32 +0000 (UTC)
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D272D176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 20:09:31 +0000 (UTC)
Received: by mail-yb0-f193.google.com with SMTP id f97so347862ybi.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 13:09:31 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 27 Oct 2016 16:09:29 -0400
From: Tejun Heo <tj@kernel.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20161027200929.GB17657@htj.duckdns.org>
References: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
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

Hello,

(cc'ing Johannes)

On Thu, Oct 27, 2016 at 10:29:01AM -0700, Andy Lutomirski wrote:
> Would it make sense to have a session to try to resolve the current
> cgroup v2 API disagreement?
> 
> In the interest of brevity, I'm not going to rehash the issues here,
> but in extremely short summary, they include tasks in non-leaf cgroups
> as well as whether threads in the same process can be in different
> cgroups.

Yeah, sure.  Do we have some time on Mon evening?  I'm not sure I'll
be around Tue evening.

Thanks.

-- 
tejun
