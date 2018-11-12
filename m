Return-Path: <SRS0=H5yh=NX=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B341FBE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 17:00:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 474DD12E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 17:00:15 +0000 (UTC)
Date: Mon, 12 Nov 2018 12:00:13 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20181112120013.4258dfd9@vmware.local.home>
In-Reply-To: <87lg5yvqsf.fsf@notabene.neil.brown.name>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<c6a1629f-df14-6e02-c995-f99a1f691c6a@gmail.com>
	<0F1E6845-9F6D-46E2-BB52-8B0C2D8103C6@fb.com>
	<3b861369-0fc0-c746-4b1b-047ce903cc30@gmail.com>
	<20181111055728.GC12818@thunk.org>
	<87lg5yvqsf.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss]    TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 12 Nov 2018 15:54:56 +1100
NeilBrown <neilb@suse.com> wrote:

> On Sun, Nov 11 2018, Theodore Y. Ts'o wrote:
> 
> >
> > At this point, Linus has indicated that he would prefer that we not
> > try to tweak the CoC any further, and let's see how it works out in
> > practice.  
> 
> I do love this.  Linus, who is apparently the cause of the problem, is
> seen to be wise enough to be able to decide when we should start the
> conversation, and when we should stop it.
> 
> To me, this just seems like Linus throwing his weight around in an area
> where he has already demonstrated his incompetence.

No, think if it this way. Code got into the kernel. Perhaps how it got
in wasn't the best way, but regardless it's in the kernel. Now we are
not going to touch it until someone shows that the code is actually
broken, with real examples. In other words, it's about not trying to
fix things for theoretical situations or hand waving. When it proves
that there is an actual bug, we'll fix it then.

I personally do not agree with this method, but I'm willing to try it
out. Linus has made that same argument for real code in the kernel
before.

-- Steve
