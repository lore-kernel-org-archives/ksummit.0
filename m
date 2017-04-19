Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B83DEBAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:32:18 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FD31F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:32:18 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id d203so7773259iof.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 14:32:18 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CALCETrVVQ4XtMY-fxr_Vmo1OCHWSZ8ry9dUBhJimH30J0L+MGg@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CALCETrVVQ4XtMY-fxr_Vmo1OCHWSZ8ry9dUBhJimH30J0L+MGg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 19 Apr 2017 14:32:17 -0700
Message-ID: <CA+55aFxy9RjdRJOoCmw9F+s3iQ9BiHK34xd6iB5NqpSgWbL-1g@mail.gmail.com>
To: Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Apr 19, 2017 at 2:05 PM, Andy Lutomirski <luto@kernel.org> wrote:
> On Tue, Apr 18, 2017 at 11:59 AM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>> The kernel summit is apparently in October, and I promised last year
>> to at least get the ball rolling with the people *I* would like to
>> see.
>
> What's the nominal subject matter?  I'd be happy to attend, but I only
> sort-of maintain anything, so, to the extent it's focused on
> maintenance, I can stay away (down the hallway?) for size reasons too.

I think the nominal subject matter is "any process issue".

We used to have all these specific technical issues, and talk about
particular subsystems etc. That is *not* what this would be about, and
would be outside the scope of the maintainer thing.

People probably still want to have hallway discussions about things
like that, of course, and maybe the kernel summit ends up being a good
time to catch the right people, but it wouldn't be the maintainer
summit part.

But anything that has to not so much with any _particular_ part of the
kernel, and is rather about some process issue, would be up for grabs.

So questions would be around things like code organization changes or
anything that cuts across subsystems and might want some hook into the
process.

IOW, things like security disclosure rules, test coverage, random
infrastructure issues, pointing at portions of the kernel that have
spotty or no maintainership, things like that.

Is there something that could be automated better and we could ask the
infrastructure people (whether k.org or test robot or whatever) for?

Or going the other way, is there something the infrastructure people
would like us to do so that they'd be able to do more?

Or our interaction (or lack there-of) with the distro people?

So anything like that - but not subsystem specific discussion about
how to solve some problem (those would be better done at mini-summits
for that subsystem, which obviously might be co-located).

I *think* we agreed last year to try to limit things to just half a
day, and a small enough group that we won't be running out of oxygen
in the room.

I think that if we have 30 people and everybody has some particular
process gripe in mind that they think they could talk about for five
minutes, we'll easily be able to fill half a day.

The corollary to that is that if you don't have a process issue in
mind, and don't expect others to be griping about you, maybe you don't
want to be there.

                Linus
