Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80103412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 07:17:39 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 770631D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 07:17:38 +0000 (UTC)
To: Steven Rostedt <rostedt@goodmis.org>, Mark Brown <broonie@kernel.org>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<20170620192858.142a43ff@gandalf.local.home>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <6d5d0115-6a6a-ecf0-5dc2-d359bb2c10a8@suse.com>
Date: Wed, 21 Jun 2017 09:17:03 +0200
MIME-Version: 1.0
In-Reply-To: <20170620192858.142a43ff@gandalf.local.home>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/21/2017 01:28 AM, Steven Rostedt wrote:
> On Tue, 20 Jun 2017 18:27:38 +0100
> Mark Brown <broonie@kernel.org> wrote:
> 
>> On Wed, Jun 21, 2017 at 02:11:34AM +0900, Sergey Senozhatsky wrote:
>>
>>> another thing that I found useful is a CPU number of the processor
>>> that stored a particular line to the logbuf.  
>>
>> At some point we start reinventing ftrace...  there's issues with
>> joining the two up but there should at least be lessons we can learn.
> 
> I've thought about this a little too.
> 
Of course you would :-)

> I would like printk to have per-cpu buffers. Then we don't even need to
> store the CPU number, that would be explicit by which buffer the data
> is stored in.
> 
> The one thing that is needed, is the consumer. In ftrace, it's whatever
> reads the buffer, which is usually user space, but can be the kernel
> (see sysctl-z). But there's only one consumer at a time.
> 
> I was thinking about a new design for printk. Similar to ftrace, but
> different.
> 
> 1) have per cpu buffers, that are lockless. Writes happen immediately,
> but the output happens later.
>> 2) have two types of console interfaces. A normal and a critical.
> 
> 3) have a thread that is woken whenever there is data in any of the
> buffers, and reads the buffers, again lockless. But to do this in a
> reasonable manner, unless you break the printks up in sub buffers like
> ftrace, if the consumer isn't fast enough, newer messages are dropped.
> 
I'd rather have the _older_ messages dropped. Or make this a policy.
But in general one should be able to adjust the buffer size so that this
doesn't occur.

> 4) If a critical print is needed (and here's why we have two console
> interfaces), the normal console interface gets turned off, and the
> buffers stop being output through them. What ever called the critical
> print, will take over, and flush out all the contents of the current
> buffers. Then anything printed during the critical section will go out
> immediately (no buffering). The printk thread, will stop having access
> to the buffers, and shutdown till the critical section is complete.
> 
Hmm. Ideally the critical print will be shipped out _without_ having to
wait for the normal buffer contents.
(Adding the message _at the tail_ and rewinding the buffer to that?)

Remember, there might be _lots_ of 'normal' buffer entries (like system
screaming just before OOM kicks in), so we might not have enough time
shipping out all entries, and the really critical one might never be seen.

_If_ all messages are proper prefixed with a timestamp (and possibly CPU
number) it doesn't really matter if messages are printed out of order;
one can always sort them later on.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
