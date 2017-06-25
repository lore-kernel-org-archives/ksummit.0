Return-Path: <linus971@gmail.com>
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170625072423.GR1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 25 Jun 2017 10:32:52 -0700
Message-ID: <CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
	versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jun 25, 2017 at 12:24 AM, Leon Romanovsky <leon@kernel.org> wrote:
> There is a steady flow of patches which bump driver and module versions.
>
>  * Can we come with unified policy about those patches?

We pretty much *have* a unified policy, it's just that I think rdma is crazy.

The unified policy is pretty much that version codes do not matter, do
not exist, and do not get updated.

Things are supposed to be backwards and forwards compatible, because
we don't accept breakage in user space anyway. So versioning is
pointless, and only causes problems.

It causes problems not just because of the conflict issues, but
because it's fundamentally wrong, and makes driver writers think that
it's ok to change interfaces and use versioning to show they changed.
It's *not* OK.

Sometimes you have feature masks (which just mean that it's ok to
_add_ interfaces rather than change them, and make it possible for
user space to check if the new interface exists), but even that is
generally the exception rather than the rule and should be used very
very carefully and preferably not at all.

                  Linus
