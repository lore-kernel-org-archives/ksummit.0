Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4202871
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:12:44 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5276816E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:12:43 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
	<alpine.LNX.2.00.1607290140040.24757@cbobk.fhfr.pm>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <668b998d-ffa6-ae7d-8782-903db550a514@suse.com>
Date: Fri, 29 Jul 2016 09:12:40 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607290140040.24757@cbobk.fhfr.pm>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/29/2016 01:42 AM, Jiri Kosina wrote:
> On Fri, 29 Jul 2016, David Herrmann wrote:
> 
> [ .. snip .. ]
>> Everyone interested in IPC is invited to the discussion. In particular,
>> we would welcome everyone who participated in the Binder and kdbus
>> discussions, is involed in shmem+memcg (or other bus1-related
>> subsystems), possibly including:
>>
>>  o Andy Lutomirski
>>  o Greg Kroah-Hartman
>>  o Steven Rostedt
>>  o Eric W. Biederman
>>  o Jiri Kosina
> 
> I'd definitely be very interested in participating in such a discussion, 
> should it happen at KS or whereever else.
> 
> Please put me to the "I still don't fully understand why teaching AF_UNIX 
> about multicast shouldn't do the job" discussion group :)
> 
Oh.
_That_ topic would definitely interest me, too.
Not so much from the obvious kdbus/binder/<insert your favourite topic
here> type of thing, but because I'm still struggling to find a way of
passing information from one side of the kernel to the other.
notifier_chains simply don't fit the bill here.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
