Return-Path: <vbabka@suse.cz>
To: Johannes Berg <johannes@sipsolutions.net>, Jiri Kosina
	<jikos@kernel.org>, "Luck, Tony" <tony.luck@intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
	<1468056541.4837.34.camel@sipsolutions.net> <57814D4E.9000001@suse.cz>
	<1470043948.3389.13.camel@sipsolutions.net>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <37ced473-7246-9af2-f63c-d0a000de6608@suse.cz>
Date: Mon, 1 Aug 2016 13:10:23 +0200
MIME-Version: 1.0
In-Reply-To: <1470043948.3389.13.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/01/2016 11:32 AM, Johannes Berg wrote:
> (sorry for the long delay - was off for a scheduled surgery & vacation)
>
>> What if we just require that
>> *somebody* (maintainer or otherwise) tags the patch with something
>> like a "Stable-Acked-By", which should mean taking more
>> responsibility for it than just forwarding a patch to stable without
>> consequences. It should imply that the acker has checked the patch in
>> the context of the particular kernel version, and be clearly
>> separated from acks/reviews of the mainline commit. It would be of
>> course better if stable tree maintainer would check if the acking
>> person is a regular contributor of the subsystem (I guess get-
>> maintainers.pl with its git checking can help here).
>> This could be required initially at least for patches where the Cc:
>> stable wasn't already present at time of maintainer's signed-off-by.
>
> It comes down to a question of trust though - who are the people you
> trust with a (hypothetical) "stable-acked-by"? There are no doubt a

This shouldn't be that different from normal Acked-by or Reviewed-by, 
where the maintainer also shouldn't blindly trust everyone. Of course 
it's definitely easier to know the trusted people for a subsystem 
maintainer with limited number of participants, compared to a 
whole-stable-tree maintainer. That's why I mentioned that track record 
from git can help at least filter out completely unknown people acking 
things.

> number of people who will see that this is the process, and send such a
> tag to expedite a patch going into the tree, just because of "process"
> and little else.

I guess they are to some extend risking their reputation if they ack 
garbage.

> IOW, I fear that such a thing, if anyone was able to give a go ahead,
> wouldn't help anything at all.

Not "anyone", but anyone with sufficient reputation.

>
> johannes
>
