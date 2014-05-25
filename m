Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DF2F826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 19:49:20 +0000 (UTC)
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E4131FFF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 19:49:20 +0000 (UTC)
Received: by mail-qg0-f49.google.com with SMTP id a108so10867379qge.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 12:49:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAsK9AH_Z5jKQrhbvce52VSGTsNKiDWkZiEScoiDUw8NMK1-VA@mail.gmail.com>
References: <CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
	<20140515154112.GA24028@thunk.org> <53779022.6080508@linux.com>
	<20140520144757.GA20288@thunk.org>
	<CAAsK9AH_Z5jKQrhbvce52VSGTsNKiDWkZiEScoiDUw8NMK1-VA@mail.gmail.com>
Date: Sun, 25 May 2014 22:49:19 +0300
Message-ID: <CACV2jQA_gES_EQncdH9s3+vDt7akUnTfBTd51RScORXsjpQ-1Q@mail.gmail.com>
From: =?UTF-8?B?VGVvZG9yYSBCxINsdcWjxIM=?= <teobaluta@gmail.com>
To: Levente Kurusa <levex@linux.com>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>, Kernel Summit Discussion List
	<ksummit-discuss@lists.linuxfoundation.org>,
	Anton Arapov <arapov@gmail.com>, Dragos Foianu <dragos.foianu@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

> 2014-05-20 16:47 GMT+02:00 Theodore Ts'o <tytso@mit.edu>:
>> On Sat, May 17, 2014 at 06:36:50PM +0200, Levente Kurusa wrote:
>>>
>>> Of course we did identify the team. It's me and Teodora. For this QR
>>> encoding work we need a lot of framework work and while at it we could
>>> also tie up some loose ends in the error reporting workflow. I, for
>>> myself, would love to clean up Bugzilla a bit. It has a lot of open bugs
>>> that have been fixed for ages, just for example.
>>
>> Just to be clear, since my understanding is that you are university
>> students --- your primary goal is to clean up the QR encoding work,
>> yes?  Do you anticipate having time to talk about working on some of
>> the larger, grander suggestions that some people have raised on this
>> thread?  That is, some kind of web backend to for which these QR's
>> could be submitted and then analyzed?
>
> At first, yes, my primary goal is to clean up the library that we currently
> use. We still need to remove a lot of unused crap from the library and
> make it behave nicer as in resource usage as well... Regarding the
> web-backend. I think Teodora has already started working on something
> like that,  but she might be working on the Android app she proposed earlier.

As a final project for one of my courses we had to implement an
Android app of and since it was open-source and free of choice I chose
to work on something related to the QR/reporting bugs (killing two
birds with one stone). It was a two-person team project (added friend
I worked with at cc)

It is a prototype that includes a simple Android app and a web server.
Basically scan the QR and then send it to the web server or email it.
You may checkout the code at
https://github.com/PDSD-2014/baluta-foianu. I will migrate the project
to my repository soon (now it's it our course's repo).

>
> Yes I realize that encoding the oops as a QR code is just a part of what
> we really need in order to bring it to its fullest. And I for sure can say I'll
> have time to work on the suggestions. I talked with Teodora about this and
> she is having her finals, but after that I guess she will join me on this
> journey.

Yes, finals are fun!... part of the reason I didn't reply for so
long... I have my last exam next Tuesday. I will be working on my
graduation project up to the end of June so I can't work full-time on
this, but I can surely make time and would love to get this up and
running.

>
>> Or is what you plan to be focusing on is more tightly focused on the
>> the actual generation of the QR barcode?  What help would you need in
>> order to bring the use of the QR barcode to its fullest potential?
>
> No not just the generation. I as a user don't at all find reporting kernel bugs
> a pleasure. My goal (and I think Teodora's as well) is to make it better. In the
> process we would need to clean up stuff that has gotten rusty over the years.
>
> What we ask for is a discussion, so that we know what work is needed to
> be done and what suggestions people have for us.
>

I agree. It is always important to know what you want to improve from
different people/perspectives, prioritize and then implement them.
When discussing via email implementation details may become
predominant but actually a discussion on what is our main focus and
compromising is better done in person imho.

Thanks,
Teodora
