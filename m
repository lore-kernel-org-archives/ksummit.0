Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 16C14523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 16:02:45 +0000 (UTC)
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39ACA1FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 16:02:44 +0000 (UTC)
Received: by mail-qc0-f169.google.com with SMTP id e16so2155938qcx.14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 09:02:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140515142424.GB2599@linux.com>
References: <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<20140513174350.GB3538@linux.com>
	<7FE219EA-6E0E-4623-B7C0-3FDFD4EEFA92@gmail.com>
	<20140515142424.GB2599@linux.com>
Date: Thu, 15 May 2014 19:02:42 +0300
Message-ID: <CACV2jQAqKOJGWGY=Mryyzad6KfjCXjMWEMPHQZSe9OW30AB+aQ@mail.gmail.com>
From: =?UTF-8?B?VGVvZG9yYSBCxINsdcWjxIM=?= <teobaluta@gmail.com>
To: Levente Kurusa <levex@linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>, Kernel Summit Discussion List
	<ksummit-discuss@lists.linuxfoundation.org>,
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

> (woo, your mail user agent messed up! :( )

Yes, I didn't send it from my laptop, but from mobile. I'm sorry, I
noticed that too late. :(

> On Tue, May 13, 2014 at 09:14:21PM +0300, Teodora Baluta wrote:
>>
>> On May 13, 2014, at 20:43, Levente Kurusa <levex@linux.com> wrote:
>>
>> Hi,
>>
>> > On Tue, May 13, 2014 at 12:07:43PM -0400, Theodore Ts'o wrote:
>> > I'll note this discussion has started mutating to a more general "how
>> > do we get more useful bug reports in front of developers", which I
>> > think is a good thing.
>> >
>> > However, I'm still not sure how useful it would be to have a tech
>> > topic (or a core topic) dedicated to the matter, because we've had
>> > discussions about and at the end of the day, what's probably really
>> > necessary is to have someone, or a small team, dedicated all or most
>> > of their time to:
>> >
>> > a) improving kerneloops.org
>> > b) finding interesting patterns in the bulk reported data, and then
>> > forwarding that on to developers
>> > c) finding ways of automating (b)
>>
>> * One possible way of improving kerneloops is that once an oops happens
>>  more than X times then it would be automatically sent to the
>>  maintainer.
>>
>> * Adding some more stats specifically for the RCs, so we can get more
>>  information during the RC phase of a release.
>>  We have essentially the same for Stable and Longterm kernels.
>>
>> (By the way, am I the only receiving frequent 503 Service Unavailable
>> errors from the oops.kernel.org site?)
>>
>> I also have the same error code. So another possible subject is adding t=
he infrastructure/web service for sending oops messages. As I understood fo=
r Konstantin, the current API is a bit tricky to use so maybe adding a simp=
le REST API could simplify the pushing process.
>
> I have no idea how the oops.kernel.org API works, sadly. Can you please g=
ive
> some insight (for instance, where the oops is parsed. in ABRT and such
> or in the server?)

I don't know how oops.kernel.org API works either, but I talked to
Konstantin about bugzilla and the problem is authentication (the app
could use an account 'qruploader' or each user to have each account).
Either way, it is not a very good option for easily sending an oops.
The implementation is a xml-rpc interface (for more check out [0]) but
you could add a layer like REST if you want to use the browser (an
interesting article here [1]).

[0] http://www.bugzilla.org/docs/4.4/en/html/api/Bugzilla/WebService/Server=
/XMLRPC.html
[1] http://www.etherealbits.com/2012/12/debunking-the-myths-of-rpc-rest/

>
>>
>> Maybe one of the problems is not having where to send these bugs easily =
with an automated process.
>>
>> I am doing an app now so how can I make it worth the time? Should I just=
 forget about bugzilla and just implement a server that collects these repo=
rts?
>>
>> If it helps I can just post the link to the repository to the Android ap=
p to get an idea how it looks (still in development).
>> >
>> > QR encoded oops might be a means towards that end, but there might be
>> > other things that could be done as well.
>> >
>> > If someone were to *do* all of this work, then reporting on it and
>> > then asking for suggestions about how this service could be improved,
>> > might make a great tech topic.
>> >
>> > But in the absence of that, can folks suggest ways that this doesn't
>> > turn into a "I know, let's put a bell on the cat!" sort of discussion
>> > that doesn't lead to anything useful?
>>
>>
>> Here are a few topics I think are worth discussing at the summit with
>> regards to this topic:
>>
>> * How to disseminate bug reports?
>>   Have comaintainers looking at bugzilla and oops.kernel.org?
>>  For some time now, I have been trying to do some cleanup, i.e.
>>  fix some bugs there, but since I lack the capabilities to close bugs
>>  it still remains to others. I would, though, be very pleased to
>>  clean up bugzilla, if I got the capabilities.
>>
>> * QR code in general.
>>   Is it actually worth it? I mean as it currently stands the QR code
>>  takes quite a bit of the screen and takes place over some (possibly
>>  valuable) information. This is because it is currently in the
>>  topleft corner. There was a suggestion to move it to the center, but
>>  I think that would as well take some information away from someone
>>  who wants to find out the information themselves.
>>
>>   If we accept the QR encoding stuff to the kernel, then that will
>>  most likely mean that kerneloops will receive more (probably
>>  valuable) information. I think that this is a good thing, since as
>>  Greg mentioned we will better now which subsystems struggle. Maybe
>>  adding a bugzilla entry as well seems reasonable and maybe if we do
>>  clean up bugzilla, maintainers will eventually look at it and the
>>  bugzilla thing will become viable.
>>
>>   Automatically adding a bugzilla might make sense as well once a
>>  certain oops hits the 'X-times-happenned' level. That way
>>  maintainers wouldn't be overflown with new bugs by mail.
>>
>> * Should maintainers be sent digests of the oopses from
>>  oops.kernel.org and the bugs from bugzilla?
>>   Okay, I know that most maintainers get mails from the bugzilla each
>>  time a new bug is filed, but I guess a digest would be better. It
>>  wouldn't overflow a maintainer's mailbox nor it would be
>>  automatically added to the maintainer's spam folder.
>>  A feature like this already exists in bugzilla, in the 'Reports'
>>  menu, but it does not send any mails, so I guess that could be
>>  automatized.
>>
>> Another suggestion is to add the possibility of analyzing bugs on the se=
rver side: like it was said previously on this thread, keeping an eye on th=
e feeds that repeat more than X times. Or see which subsystem have most iss=
ues.
>
> I am not sure what you mean by 'analyze'. Can you please elaborate?
> The current oops.kernel.org does display some information on the top
> guilty drivers and modules. It's right on the front page.
>

I was referring to the ones on oops.kernel.org but I don't know it the
site oops.kernel.org can be used in any way... I have the same
question, what is the API for it?

>>
>> After all, if the commitee decides that this topic is viable, I would
>> be happy to participate.
>>
>> I would be happy to continue working on this and leading the discussion =
if there is enough interest in discussing use of QR code in this process as=
 we *do* have the prototype and the people (Levente and me) if there is sup=
port (infrastructure, feedback, etc. ) in adding this upstream.
>
> I guess the discussion at the KS won't be mostly about QR codes, but
> rather how could we get more information on the OOPSes and how to
> disseminate them. Obviously, QR codes can play a huge part in this if
> we manage to make them as least demanding as possible. Again, I'd like
> to express my opinion on forcing the user to download an app just to
> parse an oops is less than ideal. I still strongly support going for
> a URL and a baseXX encoded approach. Obviously, there are problems
> with this way as well, but this is the way where we lose the least
> amount of users IMHO. :-)
>
> Regarding your comment that base64 adds 33% overhead. If we manage to
> shrink the size of the OOPS, i.e. remove registers, and some other
> stuff, then that may compensate for the overhead b64 adds. There
> is a subthread that discusses this.

Thanks,
Teodora
