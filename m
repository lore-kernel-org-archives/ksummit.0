Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E58BA49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Aug 2014 06:43:31 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9F04C1F9F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Aug 2014 06:43:30 +0000 (UTC)
Message-ID: <53FD7E0B.7030806@hitachi.com>
Date: Wed, 27 Aug 2014 15:43:23 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.cz>
References: <53FB17A7.9090209@hitachi.com> <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<30124.1409089196@warthog.procyon.org.uk>
	<alpine.LNX.2.00.1408262344310.2992@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1408262344310.2992@pobox.suse.cz>
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

(2014/08/27 6:45), Jiri Kosina wrote:
> On Tue, 26 Aug 2014, David Howells wrote:
> 
>>> What I found is that the module unloading involving 2 stop_machine()s
>>> for each module removing. It must not be needed.
>>
>> IIRC, at least one of the stop_machine() calls was to prevent problems between
>> module removal oopsing and the symbol lookup trying to look up whilst dumping
>> the oops.
> 
> This would be solved if symbol lookup would be RCU-ized though.
> 

Yes, I did that :)

https://lkml.org/lkml/2014/8/25/143
https://lkml.org/lkml/2014/8/25/144
https://lkml.org/lkml/2014/8/25/145

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
