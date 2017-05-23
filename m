Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C33887AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 18:17:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A37B237
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 18:17:53 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CALCETrVVQ4XtMY-fxr_Vmo1OCHWSZ8ry9dUBhJimH30J0L+MGg@mail.gmail.com>
	<CA+55aFxy9RjdRJOoCmw9F+s3iQ9BiHK34xd6iB5NqpSgWbL-1g@mail.gmail.com>
	<CA+55aFw=1uH1vNmG_NzH8mWCP-sfMAdUQtWnB3wDXCfBEyPgtA@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c5e2fc89-8337-2a93-62e7-73b281c38c33@infradead.org>
Date: Tue, 23 May 2017 11:17:50 -0700
MIME-Version: 1.0
In-Reply-To: <CA+55aFw=1uH1vNmG_NzH8mWCP-sfMAdUQtWnB3wDXCfBEyPgtA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/23/17 10:58, Linus Torvalds wrote:
> 
> One open question mark that James mentioned is just he vendor people -
> particularly if they end up being KS sponsors. I have actually
> traditionally liked the talks from vendors when they talk about their
> issues (as long as they were actual technical talks, not the marketing
> stuff - that's been a disaster), but I know some people found them
> annoying. But I think that is partly organizational and ends up
> involving Angela etc. We've always had sponsor people at the KS, I
> would not mind if they ended up having double roles as sponsor people
> with actual maintainer issues that they'd like to bring up.
> 

I think that the distros are important, but sponsors are largely either
distros or huge (yuge) users, so they are also important (technical, not
marketing).

> Anyway, the top-ten maintainers haven't changed, and this just
> reflects the "Dave Airlie suggests Daniel Vetter as a replacement".
> Davem, your name remains on that list because you didn't suggest
> alternatives..
> 
>   David Miller                  networking and network drivers
>   Greg KH                       stable and misc drivers
				+ usb and staging
>   Daniel Vetter                 drm (Dave Airlie)
>   Ingo Molnar                   x86 and core
>   Mauro Carvalho Chehab         media drivers
>   Arnd Bergmann                 arm and misc arch support
>   Andrew Morton                 misc core
				plus MM; need more MM?

>   Michael Ellerman              powerpc
>   Takashi Iwai                  sound (and SuSE)
>   Doug Ledford                  rdma
> 
> and I think any of those except probably Greg can suggest alternatives.
> 
> On top of those, I had me, stable and linux-next:
> 
>   Linus Torvalds
>   Ben Hutchings                 stable, suggested by Greg
>   Stephen Rothwell              linux-next
> 
> and that's kind of the "core maintainer" list. The rest of the names
> are more tentative, in the sense that they are suggestions for the
> kinds of areas that aren't directly touched by the above. Like:
> 
>  - the TAB people and KS people themselves. You know who you are, and
> you're probably already on this list.
> 
>    I think there's a fair amount of overlap with this group and the
> developers, but it might be worth looking exactly for those kinds of
> "overlap" people.
> 
>  - Infrastructure:
> 
>    Konstantin Ryabitsev         k.org
>    Fengguang Wu                 kernel test robot
>    Steven Rostedt               ktest
>    Shuah Khan                   tools/testing
>    Thorsten Leemhuis            regression tracking
>    Jonathan Corbet              documentaion
>    .. and syzcaller/KASAN people?
> 
>  - Security:
> 
>    Andy Lutomirski              security and core
>    Kees Cook                    security
>    James Morris                 security subsystem
> 
>  - Distro people:
> 
>    Laura Abbott                 Fedora
>    Jiri Kosina (MM? JM?)        Suse
>    Rom Lemarchand               Android
> 
>  - Filesystems?
> 
>    Al Viro                      vfs process
>    Darrick Wong                 xfs
>    Ted Ts'o                     ext4
> 
>  - Block layer:
> 
>    Christoph Hellwig             also rdma and taste
:)

>    James Bottomley
>    Jens Axboe

I would probably add some power management rep.
Otherwise it looks about right to me as an observer.

-- 
~Randy
