Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B826B927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:08:31 +0000 (UTC)
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 883A520213
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:08:30 +0000 (UTC)
Received: by mail-qc0-f174.google.com with SMTP id x13so4907020qcv.19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 11:08:29 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <CAFhKne9pHJzsxt8JemvogCRWywU5Z3e2-_JtC9Z9un+RvVP7XQ@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
	<CAFhKne9pHJzsxt8JemvogCRWywU5Z3e2-_JtC9Z9un+RvVP7XQ@mail.gmail.com>
From: Roland Dreier <roland@kernel.org>
Date: Fri, 9 May 2014 11:08:09 -0700
Message-ID: <CAG4TOxNMeQ0Opooin2nAKRGg_EDoPso4U+MZuuSPs=Jg8RjAWg@mail.gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: linux-nvme@lists.infradead.org, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 9, 2014 at 10:58 AM, Matthew Wilcox <willy6545@gmail.com> wrote:
> I'm hearing a bunch of FUD around NVMe hotplug but precious little in the
> way of bug reports! Keith Busch has been doing a stellar job of fixing up
> the bugs that he's found, but I have seen precisely zero hotplug bugs
> reported to the NVMe mailing list. So put up or shut up.

Fair enough, not trying to spread FUD here.  The issues we've seen so
far have been more around platforms not configured to report PCIe
errors properly vs. the NVMe driver itself.

 - R.
