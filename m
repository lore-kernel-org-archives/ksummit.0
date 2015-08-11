Return-Path: <khilman@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A929888B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:32:22 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6D477128
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:32:22 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id D6EFF206BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:32:21 +0000 (UTC)
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2CB73206B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:32:18 +0000 (UTC)
Received: by wibhh20 with SMTP id hh20so1837843wib.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 14:32:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
References: <CALCETrW7OiEYFm9FLbC_pnRLMvwb0nTKRWRDMXB3PMc_0H+UoA@mail.gmail.com>
Date: Tue, 11 Aug 2015 14:32:16 -0700
Message-ID: <CAMAWPa9c6kBdJC3n5q=fCD6gEPhGgFCqN_7TS-_-WLjo5_seRA@mail.gmail.com>
From: Kevin Hilman <khilman@kernel.org>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Chris Metcalf <cmetcalf@ezchip.com>,
	Christoph Lameter <cl@linux.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [BELATED CORE TOPIC] context tracking / nohz
	/ RCU state
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 11, 2015 at 10:49 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> This is a bit late, but here goes anyway.
>
> Having played with the x86 context tracking hooks for awhile, I think
> it would be nice if core code that needs to be aware of CPU context
> (kernel, user, idle, guest, etc) could come up with single,
> comprehensible, easily validated set of hooks that arch code is
> supposed to call.

Having worked on both the arm and arm64 implementations of context
tracking, I'm interested in this as well.

Kevin
