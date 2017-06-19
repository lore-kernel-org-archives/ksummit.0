Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30636B5D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 15:54:58 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BECF5203
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Jun 2017 15:54:55 +0000 (UTC)
To: Andrew Lunn <andrew@lunn.ch>, Steven Rostedt <rostedt@goodmis.org>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
Date: Mon, 19 Jun 2017 17:54:34 +0200
MIME-Version: 1.0
In-Reply-To: <20170619152055.GM3786@lunn.ch>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/19/2017 05:20 PM, Andrew Lunn wrote:
>> Here's a couple of requirements that I expect from printk:
>>
>> 1) First and for most, is the critical output. Those of warnings, and
>> above. Basically all critical messages that can be used to debug a
>> system crash. This requires the ability to be executed from any
>> context, including NMI.
>>
>>  This group includes WARN() and BUG() output, and anything in an oops.
>>
>> 2) Activity information. This too can be used to debug a system crash,
>> and requires serializations. When a device comes on line. A spurious
>> interrupt. A system state change (CPU going on or off line).
>>
>> 3) Status information. Now, I'm sure people will argue about what goes
>> in this or the above #2. Here, this would be all pr_info. Useful
>> information that should be logged, but perhaps not something that is
>> critical knowledge if a crash happens. In other words, something that
>> isn't critical to get out immediately.
>>
>> 4) All other kernel information that's not critical at all, and perhaps
>> doesn't even need to be serialized. At least, not against the above.
>> This could be cached, and outputted at a later time than when the
>> printk() was called.
> 
> Developers machine probably have different requirements to production
> machines. When debugging during code development, i want the debug
> output to be in the correct order, independent of the level. If you
> are going to cause reordering, you might want to add a sequence number
> to each output, so it is possible to put it back into the correct
> order. And it needs to be clear when output is out of order.
> 
I was under the impression that we do this anyway; even ATM every line
in the printk buffer is prefixed with a timestamp.
And we should continue with that.

Obviously, this requires that any printk buffer entry which is _not_
time-critical (ie everything not in 1) or 2) _cannot_ be broken up, but
will always end up as one record in the printk buffer.
If we could achieve that all the logging infrastructure in scsi could go
away and I could use 'normal' printk.
Now _that_ would be really cool.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
