Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD76113B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 08:20:12 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A8177DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 08:20:11 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190904134706.GA14421@pure.paranoia.local>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
Date: Thu, 05 Sep 2019 11:21:01 +0300
Message-ID: <87lfv3w3v6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 04 Sep 2019, Konstantin Ryabitsev <konstantin@linuxfoundation.org> wrote:
> On Wed, Sep 04, 2019 at 03:08:43PM +0300, Laurent Pinchart wrote:
>> > - Just like Patchwork, it would keep track of new patches and series of 
>> >   patches, recognize when new patch/series revisions are posted, track 
>> >   reviewed-by's, tested-by's, etc, and provide useful maintainer 
>> >   functionality, such as showing interdiffs between revisions.
>> 
>> I've been thinking about this for about a year now. One issue that makes
>> this difficult is that many M[UTD]A software mangle e-mails in a way
>> that make extracting information automatically pretty painful. Google's
>> answer to this was Gerrit, which solved this particular issue, but
>> disrupted the e-mail-based workflow in a way that is not acceptable to
>> many developers (myself included). A better, in my opinion, solution
>> would have been standardisation of a format to exchange review
>> information. Quite obviously going for a markup language (be it XML,
>> json, yaml or whatever is hype today) is a no-go, given that we would
>> destroy everybody's workflow again. My idea was to use a review format
>> that is as close to e-mail as possible (with > quote markers and
>> everything that people are already familiar with). Of course M[UTD]A
>> software would still mangle it, but given reasonable M[TD]As, I think we
>> could teach some of the MUAs commonly used (mutt comes to mind) to
>> behave properly (through plugins, scripts, settings files, ...). E-mails
>> that would not be mangled through the process would be easily parsable
>> by the tool you would like to develop. That would not give us full
>> coverage, but if we manage to establish such an end-to-end solution, we
>> could then push it to more MUAs. This would allow to tackle this complex
>> problem one step at a time, while not alienating developers by asking
>> them to leave their MUA. Over time we could the develop more tooling
>> around that review exchange format, once a large enough portion of
>> exchanged reviews will follow it.
>
> One way to prevent mail software from mangling message bodies is to send
> them as multipart/signed -- at least most MTA/MDAs know not to touch
> those. I know git-am handles multipart/signed patches just fine (though
> it just ignores signatures), and most gui MUAs just shrug the signatures
> off by showing them as useless attachments.
>
> Doesn't help much for cases where people use their own MUAs to send
> patches, but at least we can prevent the transmission/display parts of
> the equation from messing with structured mail content.
>
> (Of course, in my beautiful vision of the future we aren't using
> mail clients at all any more, but let's leave that topic on the
> sci-fi/fantasy shelf for now.)

The sci-fi doesn't turn to reality in massive disruptive jumps. There
are realistic intermediate steps that could be taken.

I have been, and still am, a proponent of email based review.

I've also contributed significantly to a MUA, and my observation is that
email is a massively distributed fuzzing project for email software that
allows message transmission in the sideband.

What if git push and pull operated on top of an unreliable and lossy
transmission channel, without integrity checks, that you had to
configure and set up yourself? That's pretty much what we're doing with
git send-email and am, isn't it?

Generally I think there are more issues in the submission side; there
are more people contributing than applying patches, more setups, more
configuration that can go wrong. Roughly speaking the masses of
contributors are less experienced than the maintainers. What if we tried
to provide a way to contribute using something based on git push
instead?

I'm sure you'll think of a thousand things that would not work and why
it would be just another broken github like thing, but consider this:

- The system would receive the changes by git push, and would mail out
  the patches to the relevant lists itself. It would have SMTP figured
  out. It would always mail the patches using the right git send-email
  options. It could always send a cover letter with the right diffstat,
  and with a git url to the commits.

- The system could decide what the relevant lists as well as maintainers
  to Cc are, using up-to-date info from MAINTAINERS. It could provide a
  way for maintainers and developers to opt in/out of Cc, in fine
  grained ways, instead of leaving that decision to the contributor.

- The system would know what the message-ids of the patches are, because
  it would generate them itself. Thus it would know what messages on the
  list are patches it sent, and which versions of the patches and/or
  series, and which replies are review. (It's incredibly hard for
  patchwork to identify patch series and their versions just by reading
  the list. It can get confused by review that contains a patch.)

- New versions of patch series could automatically contain a diff
  against the previous version of the patches/series. You could easily
  tell if the previous review still holds or needs checking.

- You'd still retain the familiar email based review, but it would be
  easier to find the various versions of the series, and you'd always
  have the changes readily available in a git repo. (This ties to a
  previous discussion about how to link patch series versions
  together. It could be all taken care of, automatically.)

- The maintainers could keep their email based flow, applying patches
  from the list. But there'd be fewer email related technical problems
  with them. Additionally, there'd be a way to pull the patches directly
  from a git tree, possibly pre-amended with the Reviewed-by, Tested-by,
  Link, etc. tags.

- You could add tons of useful git hooks on the contributions, ranging
  from pre-merge testing to notifying linked bugs and whatnot.

Note that I'm not suggesting contributors should have git repos from
which they send pull requests. Instead, you'd have a centralized repo
for the project where you can push your submission. Sure, lots of
details to work out there. But the git send-email part is, IMHO, a
broken part of our process, even if the changes keep being distributed
as emailed patches. It just doesn't seem that way to the people on this
list, because we've figured all of this out eons ago for ourselves. We
forget the long tail of contributors that we always brag about.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
