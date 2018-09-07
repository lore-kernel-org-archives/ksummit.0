Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4DF9CE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:38:44 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E4F5A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:38:43 +0000 (UTC)
Date: Fri, 7 Sep 2018 11:38:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <87zhwtybr3.fsf@intel.com>
Message-ID: <alpine.DEB.2.20.1809071135090.3036@hadrien>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 7 Sep 2018, Jani Nikula wrote:

> On Fri, 07 Sep 2018, Takashi Iwai <tiwai@suse.de> wrote:
> > On Fri, 07 Sep 2018 01:24:03 +0200,
> > Kees Cook wrote:
> >>
> >> On Thu, Sep 6, 2018 at 4:18 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >> > Hi Kees,
> >> >
> >> > On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
> >> >>
> >> >> If there was an agreement by all maintainers that deprecated
> >> >> functions/patterns should not be added, and we documented the
> >> >> deprecation somewhere like Documentation/process/deprecated.rst, then
> >> >> we could make the declaration that if such functions got added (it's
> >> >> easy to mechanically check for them), it would be the responsibility
> >> >> of the author and maintainer chain to see that it got fixed before the
> >> >> release is cut. We already have this for things like "breaks the x86
> >> >> allmodconfig build" or similar. The checking would be manual, and the
> >> >> enforcement would be by agreement, but it'd be better than the kind of
> >> >> "please don't do this" hand-waving we've had in the past.
> >> >
> >> > I could do this in linux-next, of course, the same way I check for
> >> > missing signed-off-bys.  All I would need is the list of deprecated
> >> > things.
> >>
> >> Hopefully we can all agree on deprecating strcpy() and strncpy() in
> >> favor of strscpy()?
> >
> > How about providing some lightweight check script for git commit hook,
> > and let each maintainer install it?
>
> I looked up 771c035372a0 ("deprecate the '__deprecated' attribute
> warnings entirely and for good"). It's easy to agree that's the right
> thing to do for the regular build.
>
> However, I think there's value in having __deprecated tagged to
> functions. (Note, just that, without defining it as
> __attribute__((deprecated)).) People looking the functions up can see
> they should find alternatives, and people looking for things to do could
> take on the conversion. I don't think a separate deprecated file will
> work. It's all too detached.
>
> Then you can just use -D__deprecated=__attribute__((deprecated)) to get
> the warnings when you like, even on a per module/file basis, or add that
> to W=<some level>, or add that to 0-day or whatever CI, ensuring patches
> aren't adding new warnings.
>
> No need to invent wheels for things where the compiler can help.

I came up with the following Coccinelle semantic patch.  The advantage is
that it can also give a hint as to what should be done.  The intent is
that it should be easily extensible.  At the moment, running in report
mode gives messages like:

drivers/nfc/pn544/i2c.c:543:1-7: Deprecated function strcpy.  Please use
strscpy, which ensures the result is null terminated and returns a negative
error code on overflow

julia

/// Report on calls to deprecated functions
///
// Confidence: High
// Copyright: (C) 2018 Julia Lawall, Inria. GPLv2.
// URL: http://coccinelle.lip6.fr
// Comments: To add new functions, instantiate new_function_name and new_comment.
// Options: --no-includes --include-headers

virtual context
virtual org
virtual report

@initialize:ocaml@
@@

let infos =
  [("strcpy",
    "Please use strscpy, which ensures the result is null terminated and returns a negative error code on overflow");
    ("strlcpy",
     "Please use strscpy, which ensures the result is null terminated and returns a negative error code on overflow");
    ("strncpy",
     "Please use strscpy, which ensures the result is null terminated and returns a negative error code on overflow");
    (* ("new_function_name", "new_comment") *)
  ]

let tbl = Hashtbl.create 101

let _ =
  List.iter (function (nm,comment) -> Hashtbl.add tbl nm comment) infos

// ----------------------------------------------------------------------------

@r depends on context || org || report@
identifier f : script:ocaml() { Hashtbl.mem tbl f };
position j0;
@@

*  f@j0(...)

// ----------------------------------------------------------------------------

@script:ocaml r_org depends on org@
f << r.f;
j0 << r.j0;
@@

let msg = Printf.sprintf "Deprecated function %s.  %s" f (Hashtbl.find tbl f) in
Coccilib.print_main msg j0

// ----------------------------------------------------------------------------

@script:ocaml r_report depends on report@
f << r.f;
j0 << r.j0;
@@

let p = List.hd j0 in
Printf.printf "%s:%d:%d-%d: Deprecated function %s.  %s\n"
  p.file p.line p.col p.col_end f (Hashtbl.find tbl f)
