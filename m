Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 260E4728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 18:26:08 +0000 (UTC)
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B2BB152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 18:26:08 +0000 (UTC)
Received: by mail-pg0-f46.google.com with SMTP id i12so10359423pgr.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Aug 2017 11:26:08 -0700 (PDT)
To: NeilBrown <neilb@suse.com>, Andy Lutomirski <luto@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<87efslsj7w.fsf@notabene.neil.brown.name>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9e56c2a1-20c9-018b-6eb8-1e5cd379e41e@gmail.com>
Date: Tue, 15 Aug 2017 20:26:02 +0200
MIME-Version: 1.0
In-Reply-To: <87efslsj7w.fsf@notabene.neil.brown.name>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/09/2017 02:00 AM, NeilBrown wrote:
> On Thu, Aug 03 2017, Andy Lutomirski wrote:
> 

[...]

> My other strawman is to declare that if an API is not documented, then
> it isn't stable.  People are welcome to use undocumented APIs, but when
> their app breaks, they get to keep both parts.  Of course, if the
> documentation is wrong, that puts us in an awkward place - especially if
> the documented behaviour is impossible to implement.  We can then
> schedule the release of the documentation at whatever time seems
> appropriate given the complexity and utility of the particular API.

Given that features sometimes exist for years (and in rare cases
decades) before they are documented, and many longstanding features
remain incompletely documented, the notion that "if an API is not
documented, then it isn't stable" makes no sense, really.

> My main point here is that I think the only real solution here is to
> revise the current social contract.  Trying to use technology to detect
> API changes - as has been suggested in this thread - is not a bad idea,
> but is unlikely to catch the really important problems.

Agreed. There are existing techniques (thorough documentation, more tests)
that, if adhered to more strictly, could certainly alleviate many of the
API design mess-ups. That sort of stuff requires people to really
think about what they are doing, and gives other people greater
insight into what they are doing, and in the process uncovers
implementation and design bugs. (I can't count the number of times
I discovered implementation bugs while I wrote manual pages.)

Some technology to discover API changes would certainly be helpful, but
it doesn't solve the deeper problem. It needs human beings to look
at this stuff. We seem to have learned the lesson that ungoverned API
design leads to chaos in the case of cgroups v1. And the approach in
cgroups v2 made a critical change: there are actually individuals
with overall design responsibility for the interface.

I think that solution could be applied more generally. Have a *paid*
user-space ABI maintainer whose job is to track ABI changes, make sure
that someone has documented them sufficiently well, and that thorough
tests have been written, before the interface can be released in the
mainline kernel.  Ideally, documented real-world use cases, along with
real-world applications using the new interface would also be part of
the package required for acceptance of a new interface.[*]

Cheers,

Michael

[*] Note, by the way, that I'm not proposing that the ABI maintainer
should write the docs or tests (although they might on occasion), 
just that they act as the gatekeeper to make sure that someone has 
done those tasks to a sufficient standard.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
