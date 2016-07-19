Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD3E32C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:02:20 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C45E4AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:02:19 +0000 (UTC)
To: Josh Triplett <josh@joshtriplett.org>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
Date: Tue, 19 Jul 2016 09:02:17 +0200
MIME-Version: 1.0
In-Reply-To: <20160719064902.GA1314@x>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/19/2016 08:49 AM, Josh Triplett wrote:
> On Tue, Jul 19, 2016 at 08:17:19AM +0200, Hannes Reinecke wrote:
>> Yes. The main problem stems from the fact that printk has two different
>> and conflicting use-cases:
>> - Really urgent, 'I am about to die' messages. Which obviously need to
>>   be printed out as fast as possible.
>> - Rather largish, information/logging 'what I always wanted to tell you'
>>   type of messages. These messages tend to be very large, but at the end
>>   it doesn't really matter _when_ they'll be printed as they are
>>   time-stamped anyway.
>>
>> For the first use-case you absolutely need a synchronous printk, but
>> this is a complete killer for the second case.
>> And OTOH having a separate thread is really the way to go for the second
>> case, but an absolute no-go for the first.
>>
>> So I really wonder if it does make sense to lump both use-cases into one
>> call, or whether it wouldn't be better to have two distinct calls
>> for that (or, for the sake of argument, use KERN_EMERG to trigger
>> synchronous printks).
> 
> For the sake of argument: what about using loglevel to distinguish the
> two cases by default?
> 
That's what I've tried to infer by the above statement; KERN_EMERG could
easily used for that sort of thing.
Also I'd like to have everything on board with this idea, namely that
using printk for instantaneous but really long messages it _NOT_ going
to work.
(And I'd love to kill printk line continuation, too, but that's another
story)

> If the printk would show up on the console, handle it inline immediately
> before returning, so that the user sees it on the console immediately in
> case the very next line hangs the system.  That also helps with the
> debugging approach of copy/pasting many instances of pr_alert("%s:%d:
> here\n", __func__, __LINE__) and looking for the last one that shows up.
> 
> If the printk would *not* show up on the console, and would only show up
> asynchronously in dmesg or a log somewhere, then go ahead and throw it
> to the asynchronous printk_kthread context to handle and return, because
> if the next line crashes, userspace wouldn't get the opportunity to read
> and log it anyway.
> 
> Combined with a mechanism like "if the kernel panics, try as hard as
> possible to dump out all the pending printks before dying", that seems
> like a reasonable default behavior that shouldn't result in surprises.
> If the kernel is alive enough that userspace can still log things (such
> as if the display hangs but the kernel and userspace are still running),
> then the kernel should also still be alive enough to process the pending
> printks.
> 
But it still leaves us with a possible priority inversion.
How should we deal with situations where the async thread is running and
someone is issuing a synchronous printk?
Should we skip the asynchonous ones and print the synchronous one first,
risking out-of-order messages but a higher probability that the urgent
message is actually printed ?
Or should we elevate everything to synchronous, preserving ordering
but increasing the risk that the synchronous message never ever makes it
to the console?

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
