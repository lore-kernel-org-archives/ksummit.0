Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8D25098F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:51:51 +0000 (UTC)
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20C5F201AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:51:51 +0000 (UTC)
Received: by mail-vc0-f175.google.com with SMTP id lh4so1623184vcb.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 12:51:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399405685.4218.55.camel@jlt4.sipsolutions.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
	<CALCETrVwW4werwNieVuqUKcUP-HRkBM2+kS5jor56NoGG1+4Hw@mail.gmail.com>
	<1399405685.4218.55.camel@jlt4.sipsolutions.net>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 6 May 2014 12:51:30 -0700
Message-ID: <CALCETrXNRgXJshbFxJTLV+5oqoDqEHvvHGC1rrnCeqAnUoHxCA@mail.gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 6, 2014 at 12:48 PM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2014-05-06 at 12:43 -0700, Andy Lutomirski wrote:
>
>> > How far would you want to take this? New syscalls is one thing, but
>> > there are frequently additions to "subsystem APIs", e.g. in networking,
>> > that aren't really syscalls but part of netlink etc. Trying to vet all
>> > of that might very well end up just overwhelming the process, but on the
>> > other hand it's still something that probably should be done in some
>> > form.
>>
>> The snarky answer is: CVE-2014-0181.  I don't like netlink for
>> anything other than broadcasts from kernel space to user space.
>
> That's also an entirely useless statement - netlink is neither going
> away nor getting used less or being restricted. :)

True.  And it's not really clear what kind of review would have caught
CVE-2014-0181.

>
>> A possibly better answer is that I think there are things that are
>> worthy of more care and things that are worthy of less care.  I also
>> think that it's more a question of the scope of the API than the
>> mechanism.  A debugfs thing, a sysfs entry for a particular device or
>> obscure configuration setting, or an ioctl on a device node are
>> possibly of less broad applicability.  Something like AF_ALG really is
>> a global API, though.  I would tend to classify many things that use
>> netlink in more-review category, since I don't think that the fact
>> that a new API uses netlink should exempt it from the same kind of
>> review it would need if it used a different mechanism.
>
> Sure - still I'd think that the review process might be overwhelmed.
> Particularly for domain-specific APIs (e.g. networking, or for me in
> particular wireless) are not always entirely clear without that
> domain-specific knowledge, nor am I convinced that it makes sense to try
> to explain it in "laymen's terms", so to speak.

That's fair.

Maybe one kind of test would be that APIs used by non-root or whole
new mechanisms (e.g. "how do I configure wireless in general") should
be reviewed more carefully than extensions of existing mechanisms
within their domain (e.g. "here's a new wireless thingy that works
just like the rest of them").

I certainly have zero interest in reviewing new wireless API calls,
despite the fact that my laptop is quite happy that they're there.

--Andy
