Return-Path: <vbabka@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ACC29258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:24:14 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0690D1DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:24:13 +0000 (UTC)
To: NeilBrown <neilb@suse.com>, Greg KH <greg@kroah.com>,
	Guenter Roeck <linux@roeck-us.net>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
	<578850EB.3090109@roeck-us.net> <20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <ab7424c2-b9d6-428c-be3f-052aa7bdd326@suse.cz>
Date: Fri, 15 Jul 2016 13:24:10 +0200
MIME-Version: 1.0
In-Reply-To: <874m7rcus8.fsf@notabene.neil.brown.name>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/15/2016 07:52 AM, NeilBrown wrote:
> On Fri, Jul 15 2016, Greg KH wrote:
> 
>> On Thu, Jul 14, 2016 at 07:56:43PM -0700, Guenter Roeck wrote:
>>> Overall, I can not imagine that it is even possible to use quilt trees as basis
>>> for development in a company with if active kernel development, even more so
>>> if a large number of engineers and/or a number of branches are involved.
>>> Sure, the QCOM example may be extreme, but do you really think that writing
>>> those 2.5M LOC would have been possible if QCOM had used Quilt trees instead
>>> of git ? Using Quilt would for sure have prevented them from writing those
>>> 2.5M LOC, but then there would be nothing. That doesn't sound like a feasible
>>> alternative either.
>>
>> It is possible, look at the Red Hat and SuSE kernel development teams.
>> Yes, in the end, most of the patches are backports from upstream, but
> 
> You are glossing over a key point.  We (or at least I as a SUSE kernel
> developer) don't use quilt for development because, like Guenter says,
> it would be too clumsy.  I do development upstream if git.  Upstream first.
> And I have scripts to help turn the result into something suitable for
> quilt, making the use of quilt a pain rather than a nightmare.
> 
> I do find quilt useful when backporting a series of patches so that I
> can resolve the conflicts on each patch individually and move backwards
> and forwards through the list of patches.  I don't think git has an easy
> way to store a branch of patches-that-I-need-to-apply and to then give
> me one at a time, removing them from the branch.  I could use 'stgit'
> for that if necessary, though it is very tempting to write something
> that is better integrated with git.

I think (but never actually tried yet) this should be somehow possible
with git rebase --interactive and git rebase --edit-todo (where the
editing of todo would be automatic via some wrappers). You should be
able to put any commits in the todo to "pick" (not just those you are
rebasing), effectively cherry-picking them. "quilt push" equivalent
becomes "git commit" and/or "git rebase --continue" (which reminds me,
can't count how many times I've used git commit --amend instead of
rebase --continue after resolving a conflict, which amended the
*previous* commit, grrr. Having some intelligent wrapper over that would
be great so you don't have to remember if there was a conflict or not,
and which command is thus appropriate). "quilt pop" would take the HEAD,
put it as the first thing to "pick" in the rebase todo, and do git reset
--hard HEAD^.

Anyway sorry for adding to the OT :)
