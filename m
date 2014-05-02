Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3B1A521
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:22:27 +0000 (UTC)
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC8451FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:22:26 +0000 (UTC)
Received: by mail-ob0-f176.google.com with SMTP id wp4so5790323obc.35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 13:22:26 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
	<alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
Date: Fri, 2 May 2014 16:22:25 -0400
Message-ID: <CA+5PVA7FN=kv+yYkA0_aXtAVZGQd7Wk-zCpHN0Cx3PwZErdtZQ@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Jiri Kosina <jkosina@suse.cz>
Content-Type: text/plain; charset=ISO-8859-1
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 2, 2014 at 4:12 PM, Jiri Kosina <jkosina@suse.cz> wrote:
> On Fri, 2 May 2014, Steven Rostedt wrote:
>
>> > I'd like to re-iterate my usual question / discussion topic of
>> > responsibility distribution for -stable patches; my proposal again would
>> > be to align the -stable tree workflow with Linus' tree workflow -- i.e.
>> > subsystem maintainers preparing 'for-stable' branches and sending pull
>> > requests to the stable team, instead of rather random cherry-picking of
>> > the patches from the air as they fly by the stable team members.
>>
>> But the stable tree has a distinct requirement of all patches having to
>> be first in mainline.
>>
>> Having a pull request can allow people to sneak things in that may not
>> be in Linus's tree. That would be bad. The cherry-picking guarantees
>> that only changes that were in Linus's tree get into stable.
>
> Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is
> different from stable team cherry-picking from Linus' tree.
>
> The rule that Linus' tree commit has to be referenced in the commit
> message (cherry-picking implies rebase anyway) can of course stay as-is,
> and is automatically verifiable.

Right.  Davem already does the "pull" thing for net fixes.  He just
queues them up in patchwork and sends full mboxes instead of doing it
via git branches.  On the flip side, something like KVM tends to not
get tagged for stable as much, and Greg has said more than once he
wish the maintainers would send patches to stable.

I think Jiri's request is reasonable and would help.  It's at least
worth discussing.

josh
