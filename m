Return-Path: <SRS0=wPzZ=LV=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E95FE47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:33:57 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 317467AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 02:33:57 +0000 (UTC)
Date: Thu, 6 Sep 2018 22:33:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180906223354.7971fe50@vmware.local.home>
In-Reply-To: <20180907014930.GE16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 7 Sep 2018 01:49:31 +0000
Sasha Levin <Alexander.Levin@microsoft.com> wrote:

> Look at v4.17-rc8..v4.18: how many of those commits fix something
> introduced in the v4.17 merge window vs fixing something older?

I will note that from my own experience, I have found a lot of older
bugs because new code that was added triggers the easier. Or I will
find old bugs while debugging a bug that was introduced in the last
merge window.

Why should this bug that I found and fixed be treated differently than
a bug that was introduced in the merge window. A lot of times, these
older bugs become "crap, this is bad, I need to get this to stable
ASAP" too.

-- Steve
