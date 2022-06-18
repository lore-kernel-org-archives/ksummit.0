From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Sat, 18 Jun 2022 23:44:03 +0300
Subject: [Ksummit-discuss] [TECH TOPIC] Rust
In-Reply-To: <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
Message-ID: <Yq45E0yUEypGPhzi@pendragon.ideasonboard.com>
Message-ID: <20220618204403.CoVgeEFc3bUWUJ3wHnlDW9oKowNIbsz6D_XCVraxeOg@z>

On Sat, Jun 18, 2022 at 11:42:09PM +0300, Laurent Pinchart wrote:
> Hi Miguel,
> 
> On Sat, Jun 18, 2022 at 10:33:01PM +0200, Miguel Ojeda wrote:
> > The effort to add Rust support to the kernel is ongoing. There has
> > been progress in different areas during the last year, and there are
> > several topics that could benefit from discussion:
> > 
> >   - Dividing the `kernel` crate into pieces, dependency management
> > between internal crates, writing crates in the rest of the kernel
> > tree, etc.
> > 
> >   - Whether to allow dependencies on external crates and vendoring of
> > useful third-party crates.
> > 
> >   - Toolchain requirements in the future and status of Rust unstable features.
> > 
> >   - The future of GCC builds: upcoming compilers, their status and
> > ETAs, adding the kernel as a testing case for them...
> > 
> >   - Steps needed for further integration in the different kernel CIs,
> > running tests, etc.
> > 
> >   - Documentation setup on kernel.org and integration between
> > Sphinx/kernel-doc and rustdoc (this can be part of the documentation
> > tech topic submitted earlier by Jon).
> > 
> >   - Discussion with prospective maintainers that want to use Rust for
> > their subsystem.
> 
> All previous topics but this one are technical. To restore the balance a
> bit (and also because I believe it's important to the success of this
> project :-)), I'd like to also discuss the impact on the kernel
> maintenance at large, beyond just the maintainers who opt in to be early
> adopters of rust in their subsystem.

This may be better addressed as part of the maintainers summit (I've
just seen your proposal for that event), but I'm concerned that the
audience there will be very restricted due to the size of the event.

-- 
Regards,

Laurent Pinchart
