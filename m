Return-Path: <vbabka@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC9AF9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:53:51 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FBE617E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:53:51 +0000 (UTC)
To: Alexey Dobriyan <adobriyan@gmail.com>, David Howells <dhowells@redhat.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<20160721233333.GD9841@dtor-ws>
	<11488.1469170986@warthog.procyon.org.uk>
	<CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
	<15317.1469182420@warthog.procyon.org.uk>
	<CACVxJT-gj8x8A4O_qrc826VnGwZS8ynMStph_mruYaM7dJ6EEQ@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <14459ec4-b42d-d6e1-51fd-eb6ac77ada17@suse.cz>
Date: Fri, 22 Jul 2016 12:53:49 +0200
MIME-Version: 1.0
In-Reply-To: <CACVxJT-gj8x8A4O_qrc826VnGwZS8ynMStph_mruYaM7dJ6EEQ@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/22/2016 12:22 PM, Alexey Dobriyan wrote:
> On Fri, Jul 22, 2016 at 1:13 PM, David Howells <dhowells@redhat.com> wrote:
>> Alexey Dobriyan <adobriyan@gmail.com> wrote:
>>
>>> Indeed, but please call them flags_t and flags64_t.
>>
>> Fine by me, though I was trying to avoid confusion with the argument to IRQ
>> munging functions.
>
> I can resurrect irq_flags_t but there is no procedure for merging 1MB+ diffs
> without spending whole life splitting and emailing maintainers.

I think the procedure is that you have a script (e.g. coccinelle) to 
make such patch and Linus applies it himself just before/after rc1.

> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
