Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B18698B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 05:02:16 +0000 (UTC)
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29CB32019B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 05:02:15 +0000 (UTC)
Received: by mail-qg0-f52.google.com with SMTP id a108so2252515qge.39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 22:02:15 -0700 (PDT)
MIME-Version: 1.0
Sender: darren@apps.dvhart.com
In-Reply-To: <CACRpkdbiurS=m=2wH4-9G8pjVwDZfKykVW+12UWMpHjNBm8ppg@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<CACRpkdbiurS=m=2wH4-9G8pjVwDZfKykVW+12UWMpHjNBm8ppg@mail.gmail.com>
Date: Mon, 5 May 2014 22:02:15 -0700
Message-ID: <CAGChsmPbAHA0ARhVNz8DR+yA1+MYNT-R91FZbgeQFutyot6RKA@mail.gmail.com>
From: Darren Hart <darren@dvhart.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 5, 2014 at 9:58 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On this topic I need to add:
>
> how are the ACPI HW descriptions really happening?
>
> I as subsystem maintainer have no real contact with these people,
> I can only get a *vague* feeling that sometimes, they live in an ancient
> world of assumptions that do not hold.
>
> Specifically I am worried when seeing some ACPI stuff that their idea
> of pin control is "some sort of fancy GPIO-bolt on" and I fear they will
> attempt to model and implement this with an ugly interface that we
> will have to account for later, instead of reading say
> Documentation/pinctrl.txt and learn something about how software
> engineers go about handling such hardware.

I was talking with someone just last week about how this might be
done. I'll see if I can get the person looking into it to reach out to
you.

> Where is the communication entry port for a driver subsystem
> maintainer that want to bring a message to the ACPI HW bindings
> people?

Rafael and I would be a good start. He and I, along with others, have
been spending some time lately in the ACPI Specification Working Group
and have some idea of how this stuff works. Matthew Garrett is another
good contact for how to get involved.


-- 
Darren Hart
