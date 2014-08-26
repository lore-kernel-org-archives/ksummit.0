Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ABDBB8DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 05:24:41 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F31601FA9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 05:24:40 +0000 (UTC)
Message-ID: <53FC1A11.1000700@hitachi.com>
Date: Tue, 26 Aug 2014 14:24:33 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.cz>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<53FB17A7.9090209@hitachi.com>
	<alpine.LNX.2.00.1408251304260.2992@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1408251304260.2992@pobox.suse.cz>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/08/25 20:05), Jiri Kosina wrote:
> On Mon, 25 Aug 2014, Masami Hiramatsu wrote:
> 
>> What I found is that the module unloading involving 2 stop_machine()s 
>> for each module removing. It must not be needed. However, since the 
>> module's ref-counter is over-optimized for BIG SMP machine, we can't 
>> remove it without replacing it. But it means some performance regression 
>> can happen on such big-scale SMP machines (not the laptop nor normal smp 
>> machine).
> 
> Is that really a big problem in practice?
> 
> I.e. are there valid usecase scenarios where module load / unload should 
> be considered a hotpath where every ms of performance would matter?

There could be. However, in usual usecases, I guess people will not want
to unload it. Systemtap or something "additional" module users will
need to unload modules. (kpatch could be one of them, but I also think
no one want to remove applied patches anyway.)

I just tried to show that the kmodule unload is the one who uses
stop_machine heavily but it is not necessary :)

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
