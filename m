Return-Path: <dh.herrmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1FF21954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:36:11 +0000 (UTC)
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEAFDE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:36:09 +0000 (UTC)
Received: by mail-lf0-f54.google.com with SMTP id g62so112272760lfe.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 03:36:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160730222100.6me2tt54w3e234wu@x>
References: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
	<20160730222100.6me2tt54w3e234wu@x>
From: David Herrmann <dh.herrmann@gmail.com>
Date: Mon, 1 Aug 2016 12:36:07 +0200
Message-ID: <CANq1E4QA9yyQbsZpZPCEfpFKMT3zLbt7j6FB=cHq-SRAAFJm0Q@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Josh!

On Sun, Jul 31, 2016 at 12:21 AM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Fri, Jul 29, 2016 at 12:24:03AM +0200, David Herrmann wrote:
>> Tom Gundersen and I would like to propose a technical session on
>> in-kernel IPC systems. For roughly half a year now we have been
>> developing (with others) a capability-based [1] IPC system for linux,
>> called bus1 [2]. We would like to present bus1, start a discussion on
>> open problems, and talk about the possible path forward for an upstream
>> inclusion.
>>
>> While bus1 emerged out of the kdbus project, it is a new, independent
>> project, designed from scratch.
>
> I'd heard that the plan for bus1 was to provide DBus-compatible
> semantics via a userspace compatibility layer.  Do you still plan to do
> that, so that current users of DBus can run on bus1 without
> modification, or will current users of DBus need to port to bus1?

DBus has very limited requirements to the transport layer, so bus1
would work just fine. If you want to get rid of the broker, though,
you need to support some of the quirks of DBus. Most importantly,
dbus-daemon supports almost arbitrary broadcast-filters of any
transmitted broadcast message, as well as a very expressive policy
language to perform per-message filtering. We do not support either on
bus1, since we abstain from any global state. Hence, you cannot get
rid of the broker if you use bus1 as DBus transport.

Having said that, we still believe that DBus will not go away over
night, and we do want to improve it. By restricting the dbus-spec to
destination-based broadcast-filters, and employing a replacement
policy language similar to the one of kdbus, you can shortcut the
broker, though. All you would need for DBus-compatibility is a
bus-manager that connects peers according to the policy, but it would
no longer route messages. Furthermore, by shifting DBus to
signal-subscriptions rather than signal-matching, we do pave the way
for a future without such a bus-manager.
If there are clients incompatible to the mentioned restrictions to the
DBus spec (and I am unaware of any besides 'dconf', which we know
workarounds for), a bus-broker can always be employed as an add-on,
thus keeping full DBus compatibility.

Thanks
David
