Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 96C0449B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:29:24 +0000 (UTC)
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4820419C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 17:29:23 +0000 (UTC)
Received: by mail-ua0-f170.google.com with SMTP id 20so18755455uak.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 10:29:23 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@amacapital.net>
Date: Thu, 27 Oct 2016 10:29:01 -0700
Message-ID: <CALCETrV17Eqxa9-ronb_C0xX5usWyzQo6dW_OKaBT+roSr+kaA@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>, Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] [LAST-MINUTE TOPIC] cgroup API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Would it make sense to have a session to try to resolve the current
cgroup v2 API disagreement?

In the interest of brevity, I'm not going to rehash the issues here,
but in extremely short summary, they include tasks in non-leaf cgroups
as well as whether threads in the same process can be in different
cgroups.
