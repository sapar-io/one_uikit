import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:one_uikit/one_uikit.dart';

/// Widget previews for OneCard component
///
/// These previews demonstrate all states and variations

double _sectionSpacing = 24.0;

// ============================================================================
// BASIC CARDS
// ============================================================================

@Preview(name: "Card - Basic States")
Widget previewCardBasicStates() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Default Card",
          child: OneCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card Title",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "This is a basic card with default styling.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Card Without Shadow",
          child: OneCard(
            shadow: null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "No Shadow",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Card without shadow, only border.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Card with SM Shadow",
          child: OneCard(
            shadow: OneShadowSize.sm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Medium Shadow",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Card with larger shadow (sm).",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// FOCUS RINGS
// ============================================================================

@Preview(name: "Card - Focus Rings")
Widget previewCardFocusRings() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Brand Focus Ring",
          child: OneCard(
            focusRing: OneCardFocusRing.brand,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "focus-ring",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "brand-500",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Error Focus Ring",
          child: OneCard(
            focusRing: OneCardFocusRing.error,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "focus-ring-error",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "error-500",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Brand Focus Ring + Shadow XS",
          child: OneCard(
            focusRing: OneCardFocusRing.brand,
            shadow: OneShadowSize.xs,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "focus-ring-shadow-xs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "brand-500 + shadow-xs",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Brand Focus Ring + Shadow SM",
          child: OneCard(
            focusRing: OneCardFocusRing.brand,
            shadow: OneShadowSize.sm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "focus-ring-shadow-sm",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "brand-500 + shadow-sm",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Error Focus Ring + Shadow XS",
          child: OneCard(
            focusRing: OneCardFocusRing.error,
            shadow: OneShadowSize.xs,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "focus-ring-error-shadow-xs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "error-500 + shadow-xs",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// INTERACTIVE CARDS
// ============================================================================

@Preview(name: "Card - Interactive")
Widget previewCardInteractive() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Clickable Card",
          child: OneCard(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Click Me",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "This card has ripple effect on tap.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildSection(
          label: "Card with Long Press",
          child: OneCard(
            onTap: () {},
            onLongPress: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Press & Hold",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Supports tap and long press.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// CARD EXAMPLES (Like Untitled UI)
// ============================================================================

@Preview(name: "Card - Integration Example")
Widget previewCardIntegrationExample() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: OneCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with icon and toggle
          Row(
            children: [
              // App icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(Icons.apps, color: Colors.indigo),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  "Linear",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // Toggle switch placeholder
              Container(
                width: 36,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          // Description
          Text(
            "Streamline software projects, sprints, and bug tracking.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 24),
          // Divider
          Container(
            height: 1,
            color: Colors.grey[200],
          ),
          SizedBox(height: 16),
          // Action button
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "View integration",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

@Preview(name: "Card - Profile Example")
Widget previewCardProfileExample() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: OneCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with avatar
          Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person, color: Colors.grey[400]),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Designer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Spherule",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          // Date
          Text(
            "Jan 2018 – May 2020",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 24),
          // Divider
          Container(
            height: 1,
            color: Colors.grey[200],
          ),
          SizedBox(height: 16),
          // Action button
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "View project",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// ============================================================================
// ALL VARIATIONS
// ============================================================================

@Preview(name: "Card - All Variations")
Widget previewCardAllVariations() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _sectionSpacing,
      children: [
        _buildSection(
          label: "Default",
          child: OneCard(
            child: _sampleContent(),
          ),
        ),
        _buildSection(
          label: "No Shadow",
          child: OneCard(
            shadow: null,
            child: _sampleContent(),
          ),
        ),
        _buildSection(
          label: "SM Shadow",
          child: OneCard(
            shadow: OneShadowSize.sm,
            child: _sampleContent(),
          ),
        ),
        _buildSection(
          label: "Brand Focus",
          child: OneCard(
            focusRing: OneCardFocusRing.brand,
            child: _sampleContent(),
          ),
        ),
        _buildSection(
          label: "Error Focus",
          child: OneCard(
            focusRing: OneCardFocusRing.error,
            child: _sampleContent(),
          ),
        ),
        _buildSection(
          label: "Brand Focus + Shadow",
          child: OneCard(
            focusRing: OneCardFocusRing.brand,
            shadow: OneShadowSize.xs,
            child: _sampleContent(),
          ),
        ),
      ],
    ),
  );
}

// ============================================================================
// HELPER WIDGETS
// ============================================================================

Widget _buildSection({required String label, required Widget child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),
      child,
    ],
  );
}

Widget _sampleContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Card Content",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 4),
      Text(
        "Sample description text",
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[600],
        ),
      ),
    ],
  );
}
