Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8AADDAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 13:09:17 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20C5715A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 13:09:17 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Takashi Iwai <tiwai@suse.de>, Jiri Kosina <jikos@kernel.org>
In-Reply-To: <s5h7f04qewv.wl-tiwai@suse.de>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<s5h8tkkqfn6.wl-tiwai@suse.de>
	<alpine.LSU.2.20.1706221610000.30709@cbobk.fhfr.pm>
	<s5h7f04qewv.wl-tiwai@suse.de>
Date: Wed, 28 Jun 2017 16:12:29 +0300
Message-ID: <87shikb6iq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
	loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 22 Jun 2017, Takashi Iwai <tiwai@suse.de> wrote:
> On Thu, 22 Jun 2017 16:12:09 +0200,
> Jiri Kosina wrote:
>> 
>> On Thu, 22 Jun 2017, Takashi Iwai wrote:
>> 
>> > - The inconsistent bug tracking over the whole kernel areas:
>> >   which way to report purely depends on the subsystem.  Even inside a
>> >   subsystem, some prefer bugzilla while some don't.
>> 
>> Agreed that this might be annoying for the reporters, but I don't think we 
>> want to go towards pushing maintainers to use one unified solution. That'd 
>> be counter-productive.
>
> I don't pursue that, either.  It'd be great, though, if we can reduce
> the too much differences.  The variety is the strength of open source,
> but in this case...

The least we can do is use the MAINTAINERS "B:" tag to document the
preferences of each subsystem or driver.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center
