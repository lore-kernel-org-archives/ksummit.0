Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57D4B71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 12:53:22 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 245AF220
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 12:53:20 +0000 (UTC)
To: David Woodhouse <dwmw2@infradead.org>, Julia Lawall <julia.lawall@lip6.fr>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <1ba2bb54-1de0-68ba-e5ff-1bc7b23c0317@suse.com>
Date: Tue, 26 Jul 2016 14:53:18 +0200
MIME-Version: 1.0
In-Reply-To: <1469533716.120686.281.camel@infradead.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 07/26/2016 01:48 PM, David Woodhouse wrote:
> On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
>>
>>> I guess that almost all functions return only a few possible error codes?
>>
>> Precisely. If we had a way of specifying "the return value is an errno
>> with the possible values '0', '-EIO', and '-EINVAL'" that would be
>> _so_ cool.
>
> And perpetually out of date. Because functions call through to *other*
> functions which might return an errno outside the 'known' set.
>
What I want to catch with that are value range collisions; has the 'int' 
returned from that function the same meaning as the 'int' returned from 
the next function.
Random example: drivers/net/veth.c:veth_newlink()
'rtnl_nla_parse_ifla()' returns a value which is stored in the same 
variable as the return value from veth_validate(). And that value is 
then used as the return value for the entire function.
ATM we need to do code inspection to figure out if both indeed return an 
errno or not.

> Any why would you *want* to know the precise set of errnos that a
> function might return, if not to deliberately code your error handling
> non-defensively?
>
The ultimate goal is to provide a map with the known return codes for 
the various functions. Then we can invert that map and _inject_ errors
via systemtap and friend for those functions to test the error paths.
Using a fuzzer would work, too, but I think it's a bit too generic here
(scanning the entire range of 'int' _does_ take some time).
In general we want to trigger the 'exciting' cases (ie values where 
there _is_ an error path coded) to figure out if the error handling 
actually does behave as advertised.

> I can understand wanting to distinguish between errors and non-errors
> and ensure that the ranges cannot overlap. But IS_ERR_VALUE() typically
> reserves the whole range to -4095 (-MAX_ERRNO) for that. And I don't
> think we'd ever want to do anything different.
>
Even that would be fine; even restricting the range from the entire 
'int' to 4096 will make live easier.
But ATM we don't even have a way of expressing that.

> In particular I don't want anyone ever saying "oh, -123 is a valid non-
> error return but no other negative numbers are. But that's OK because
> it'll never *actually* return an error of -ENOMEDIUM so there's no
> ambiguity."
>
Na, of course not.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
