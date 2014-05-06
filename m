Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EB7CB988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:30:48 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 79E3320163
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:30:48 +0000 (UTC)
Received: from mlsv4.hitachi.co.jp (unknown [133.144.234.166])
	by mail7.hitachi.co.jp (Postfix) with ESMTP id 3937A37AC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 21:30:47 +0900 (JST)
Received: from vshuts02.hitachi.co.jp (vshuts02.hitachi.co.jp [10.201.6.84])
	by mfilter03.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s46CUkHX016002 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 6 May 2014 21:30:46 +0900
Message-ID: <5368D5F1.1090502@hitachi.com>
Date: Tue, 06 May 2014 21:30:41 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/03 4:42), Jiri Kosina wrote:
> Runtime/live kernel patching is becoming a topic these days. There are 
> several parallel implementations currently evolving in parallel (kpatch, 
> kgraft, criu-based solution, ksplice to some extent), all of them having 
> their pros and cons. 
> 
> It's clear that what is going to get merged at the end of the day would 
> have to be some super-position of the currently existing solutions. 
> 
> Finding a reasonable compromise might be challenging. Having discussion 
> between the groups working on those solutions (tech topic) and with 
> "general maintainer audience" to face the flame^W^W^Wobtain feedback 
> (core topic) would be very valuable step in converging to unified 
> solution.
> 
> Suggested participants: see the list of "competing" projects above

I'd like to participate this discussion since I'm helping kpatch :)
Live patching is a desired feature for some mission-critical non-stop
systems.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
