Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B7C19124E
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 14:59:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGk5Q-0000mU-3U; Tue, 24 Mar 2020 13:59:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil-cisco@xs4all.nl>) id 1jGk5O-0000mN-KN
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 13:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i1Vyhy85C8Pjtqaww4XzYSuDfwl3ZOl0eP/5LlI1jGw=; b=BcVHKyqkn6qL5XQMfOWX2rGMZe
 iNHo00419r7mOITK60GPdzfkCv/E8HpiVjl6vE33eCX4hN2kSUihTNcnGVbvL3tdPttfXCRIfe3bM
 QQWH80AcJo9BpPJfAIHO17lHdmXmqAiCNeU0o+UJcBvU+x6zHSKsCFyZBtEe60hE+NvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i1Vyhy85C8Pjtqaww4XzYSuDfwl3ZOl0eP/5LlI1jGw=; b=IOVAgWwZpF/TNbjw+rzNRCzMYx
 rkUuCE2fYo7/T0cKAb/aOayd7dNRhwXOTq5Dloy+U2IC9o6lN+2bBG91RCsHSFveiLNDfZ5DiJ3/v
 GWAsjzhczVFbi87Y9JXmPvYJiV66TN8PNB2QJiFbS3JY/adnTMpKtTXxWFB2mAIH4xvY=;
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGk5J-00FEs2-PY
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 13:59:18 +0000
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Gk55jWfqrBr2bGk59jD6w9; Tue, 24 Mar 2020 14:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1585058345; bh=i1Vyhy85C8Pjtqaww4XzYSuDfwl3ZOl0eP/5LlI1jGw=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=qGQ5n+5JdPtLsyZ6NQQDAKlJ2vJOKV9oo9pqy57CcYa5JZRXXZm/0TJuBWe2bNnxa
 Msuyt4dl7alOZgU0oq+6FTiMh0abS84ZiSTx9sLO9hFhV7LiPiRpnBDcd6ludx9prD
 hG/mQwhbmExGqjtzgR3X3udn/d66PppGtbcPkXTUanplxU9/6xD8UQqr20RhjCvcuF
 c56wJy6ZWixaRNTFww5z7pCK4fxymVaDSA+XyJjRsXXvUq7p4B7g5N2fnwEmdtoyvR
 PkBdtnlW5nIZLmEKN+ZAmfUM0+8C2zk9M2pUn8dDbLbMgKqR+AbP1pqkEril2NteNr
 co3Y3aV+ftmyw==
Subject: Re: [PATCH v2 00/20] Reorganize media Kconfig
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1585057134.git.mchehab+huawei@kernel.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <0e4b107c-eb85-9726-3e77-5999b9b6a0ef@xs4all.nl>
Date: Tue, 24 Mar 2020 14:58:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1585057134.git.mchehab+huawei@kernel.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfP4cqGhKIeS0FimdeveRcgl80EpBbtlA7sg79O+IkxaonxMIdaKxB/9OEamsKYJBhZkk8u7C/IjE6JRNen1zOtyZjUSNog6gaX7VpkpsVU6HPMYaFYSl
 OqDgukemedjK54x1HnYT1UbiHjrfX1WRCgJSWe9vSOB7r06lcnIFGPw0PoCXppLD0pdhFhVxdRUB8gJnVoFWUJWc+8j3fvhitBMAy8Ton9LjriAhbc5a4CBV
 iY9FxUzl3D74GOl4/QcIsrUOejJpOqe+IwoXkrZpDLCXvjqz/AR3Ui5e/tVRXGrmW7JPBlQ/jkFXpiJRyj/JuifsyeyilRnr+EL91ffazJEr71AZY7UX2Og5
 1w4ikVnXwwpCYfEyNGO1cM1eL12owealIFqjwr7EOK8z/atgruwesnRbaetmVzHDXxBTLAxYRT828VjLucEh4MAVtCbj+o6dcS7lBjR67i6hOmSF7/6lt+sF
 PEtC4g2a1aigLplrp8cJAQzQFC6MtWZX70TdJN8a8axjxEwt+taELhFdnFK86RP+kjSBb6qJe6pXU4oc0UoKrAPKlNIMCR1v70bedJFsQt/l77Mx36n13UFc
 /7k=
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jGk5J-00FEs2-PY
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>, linux1394-devel@lists.sourceforge.net,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 3/24/20 2:42 PM, Mauro Carvalho Chehab wrote:
> This patch series do lots of reorg at the media Kconfig options.
> It also move test drivers from platform dir to a new one.

You sent this to linux-doc, but you probably meant linux-media.

Can you repost?

Regards,

	Hans

> 
> After this change, the main config is organized on menus, allowing to
> select:
> 
> 	- type of devices selection - the filtering options
> 	- Media core options - with API and other core stuff
> 	- Media core extra options
> 	- Media drivers
> 	- Media ancillary drivers
> 
> The "type of devices" menu has the filtering options for:
> 
> 	- Cameras and video grabbers
> 	- Analog TV
> 	- Digital TV
> 	- AM/FM radio receivers/transmitters
> 	- SDR
> 	- CEC
> 	- Embeded devices (SoC)
> 	- Test drivers
> 
> This way, one interested only on embedded devices can unselect
> everything but "Embedded devices (SoC)" option.
> 
> Distros for PC/Laptops can enable everything but 
> "Embedded devices (SoC)" and "Test drivers".
> 
> Users can select just what they want, without bothering with
> hundreds of options that he won't have any clue about their
> meanings.
> 
> Mauro Carvalho Chehab (20):
>   media: dvb-usb: auto-select CYPRESS_FIRMWARE
>   media: Kconfig: not all V4L2 platform drivers are for camera
>   media: pci: move VIDEO_PCI_SKELETON to a different Kconfig
>   media: reorganize the drivers menu options
>   media: Kconfig: update the MEDIA_SUPPORT help message
>   media: Kconfig: use a sub-menu to select supported devices
>   media: Kconfig: add an option to filter in/out the embedded drivers
>   media: split test drivers from platform directory
>   media: Kconfig: make filtering devices optional
>   media: Kconfig: move CEC-specific options to cec/Kconfig
>   media: Kconfig: move comment to siano include
>   media: Kconfig: move DVB-specific options to dvb-core/Kconfig
>   media: Kconfig: move V4L2 subdev API to v4l2-core/Kconfig
>   media: Kconfig: move drivers-specific TTPCI_EEPROM Kconfig var
>   media: Kconfig: move media controller core select to main Kconfig
>   media: Kconfig: better organize menu items
>   media: Kconfig: mode firewire comment to firewire/Kconfig
>   media: Kconfig: place all options under a sub-menu
>   media: Kconfig: move the position of sub-driver autoselection
>   media: Kconfig: on !EMBEDDED && !EXPERT, enable driver filtering
> 
>  drivers/media/Kconfig                         | 216 ++++++++++--------
>  drivers/media/cec/Kconfig                     |  10 +
>  drivers/media/common/Kconfig                  |   2 +-
>  drivers/media/dvb-core/Kconfig                |  26 +++
>  drivers/media/firewire/Kconfig                |   5 +-
>  drivers/media/mc/Kconfig                      |   9 -
>  drivers/media/mmc/Kconfig                     |   1 -
>  drivers/media/mmc/siano/Kconfig               |   2 +
>  drivers/media/pci/Kconfig                     |  10 +
>  drivers/media/platform/Kconfig                |  24 --
>  drivers/media/platform/Makefile               |   5 -
>  drivers/media/test_drivers/Kconfig            |  28 +++
>  drivers/media/test_drivers/Makefile           |   9 +
>  .../vicodec/Kconfig                           |   0
>  .../vicodec/Makefile                          |   0
>  .../vicodec/codec-fwht.c                      |   0
>  .../vicodec/codec-fwht.h                      |   0
>  .../vicodec/codec-v4l2-fwht.c                 |   0
>  .../vicodec/codec-v4l2-fwht.h                 |   0
>  .../vicodec/vicodec-core.c                    |   0
>  .../media/{platform => test_drivers}/vim2m.c  |   0
>  .../{platform => test_drivers}/vimc/Kconfig   |   0
>  .../{platform => test_drivers}/vimc/Makefile  |   0
>  .../vimc/vimc-capture.c                       |   0
>  .../vimc/vimc-common.c                        |   0
>  .../vimc/vimc-common.h                        |   0
>  .../vimc/vimc-core.c                          |   0
>  .../vimc/vimc-debayer.c                       |   0
>  .../vimc/vimc-scaler.c                        |   0
>  .../vimc/vimc-sensor.c                        |   0
>  .../vimc/vimc-streamer.c                      |   0
>  .../vimc/vimc-streamer.h                      |   0
>  .../{platform => test_drivers}/vivid/Kconfig  |   0
>  .../{platform => test_drivers}/vivid/Makefile |   0
>  .../vivid/vivid-cec.c                         |   0
>  .../vivid/vivid-cec.h                         |   0
>  .../vivid/vivid-core.c                        |   0
>  .../vivid/vivid-core.h                        |   0
>  .../vivid/vivid-ctrls.c                       |   0
>  .../vivid/vivid-ctrls.h                       |   0
>  .../vivid/vivid-kthread-cap.c                 |   0
>  .../vivid/vivid-kthread-cap.h                 |   0
>  .../vivid/vivid-kthread-out.c                 |   0
>  .../vivid/vivid-kthread-out.h                 |   0
>  .../vivid/vivid-kthread-touch.c               |   0
>  .../vivid/vivid-kthread-touch.h               |   0
>  .../vivid/vivid-meta-cap.c                    |   0
>  .../vivid/vivid-meta-cap.h                    |   0
>  .../vivid/vivid-meta-out.c                    |   0
>  .../vivid/vivid-meta-out.h                    |   0
>  .../vivid/vivid-osd.c                         |   0
>  .../vivid/vivid-osd.h                         |   0
>  .../vivid/vivid-radio-common.c                |   0
>  .../vivid/vivid-radio-common.h                |   0
>  .../vivid/vivid-radio-rx.c                    |   0
>  .../vivid/vivid-radio-rx.h                    |   0
>  .../vivid/vivid-radio-tx.c                    |   0
>  .../vivid/vivid-radio-tx.h                    |   0
>  .../vivid/vivid-rds-gen.c                     |   0
>  .../vivid/vivid-rds-gen.h                     |   0
>  .../vivid/vivid-sdr-cap.c                     |   0
>  .../vivid/vivid-sdr-cap.h                     |   0
>  .../vivid/vivid-touch-cap.c                   |   0
>  .../vivid/vivid-touch-cap.h                   |   0
>  .../vivid/vivid-vbi-cap.c                     |   0
>  .../vivid/vivid-vbi-cap.h                     |   0
>  .../vivid/vivid-vbi-gen.c                     |   0
>  .../vivid/vivid-vbi-gen.h                     |   0
>  .../vivid/vivid-vbi-out.c                     |   0
>  .../vivid/vivid-vbi-out.h                     |   0
>  .../vivid/vivid-vid-cap.c                     |   0
>  .../vivid/vivid-vid-cap.h                     |   0
>  .../vivid/vivid-vid-common.c                  |   0
>  .../vivid/vivid-vid-common.h                  |   0
>  .../vivid/vivid-vid-out.c                     |   0
>  .../vivid/vivid-vid-out.h                     |   0
>  drivers/media/usb/Kconfig                     |   6 +
>  drivers/media/usb/dvb-usb/Kconfig             |   1 +
>  drivers/media/v4l2-core/Kconfig               |  19 +-
>  79 files changed, 222 insertions(+), 151 deletions(-)
>  create mode 100644 drivers/media/test_drivers/Kconfig
>  create mode 100644 drivers/media/test_drivers/Makefile
>  rename drivers/media/{platform => test_drivers}/vicodec/Kconfig (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/Makefile (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.c (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.h (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.c (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.h (100%)
>  rename drivers/media/{platform => test_drivers}/vicodec/vicodec-core.c (100%)
>  rename drivers/media/{platform => test_drivers}/vim2m.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/Kconfig (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/Makefile (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-capture.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-common.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-common.h (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-core.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-debayer.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-scaler.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-sensor.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.c (100%)
>  rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/Kconfig (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/Makefile (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-core.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-core.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.h (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.c (100%)
>  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.h (100%)
> 



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
